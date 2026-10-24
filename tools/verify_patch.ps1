param(
    [string]$BaseModule = (Join-Path (Split-Path $PSScriptRoot -Parent) '../MajesticCollection')
)
$ErrorActionPreference = 'Stop'
$patchRoot = Split-Path $PSScriptRoot -Parent
$rules = @{}
$transforms = @{}
foreach ($kind in @('items', 'pieces')) {
    $path = Join-Path $patchRoot "ModuleData/rbm_compat_$kind.xslt"
    $sheet = [xml][IO.File]::ReadAllText($path)
    $ns = [Xml.XmlNamespaceManager]::new($sheet.NameTable)
    $ns.AddNamespace('xsl', 'http://www.w3.org/1999/XSL/Transform')
    $lookup = @{}
    foreach ($rule in $sheet.SelectNodes('//xsl:when', $ns)) {
        $parts = $rule.test.Split("'")
        if ($parts.Count -ne 3 -or $parts[0] -ne '$key=' -or $parts[2] -ne '') {
            throw "Unsupported rule: $($rule.test)"
        }
        $key = $parts[1]
        if ($lookup.ContainsKey($key)) { throw "Duplicate rule: $key" }
        $value = 0.0
        if (-not [double]::TryParse($rule.InnerText, [Globalization.NumberStyles]::Float, [Globalization.CultureInfo]::InvariantCulture, [ref]$value) -or $value -lt 0) {
            throw "Invalid balance value: $key"
        }
        $lookup[$key] = $rule.InnerText
    }
    $rules[$kind] = $lookup
    $transform = [Xml.Xsl.XslCompiledTransform]::new()
    $transform.Load($path)
    $transforms[$kind] = $transform
}
$langPath = Join-Path $BaseModule 'ModuleData/Languages/CNs/std_majestic_collection_strings_xml-zho-CN.xml'
$language = [xml][IO.File]::ReadAllText($langPath)
$translations = @{}
foreach ($entry in $language.base.strings.string) {
    if ($translations.ContainsKey($entry.id)) { throw "Duplicate translation: $($entry.id)" }
    $translations[$entry.id] = $entry.text
}
$missing = [Collections.Generic.List[string]]::new()
$targets = @{items = @{}; pieces = @{}}
$counts = @{items = 0; crafted = 0; pieces = 0; names = 0}
foreach ($file in Get-ChildItem -LiteralPath (Join-Path $BaseModule 'ModuleData') -Filter '*.xml' -File) {
    $source = [Xml.XmlDocument]::new()
    $source.Load($file.FullName)
    $kind = if ($source.DocumentElement.Name -eq 'CraftingPieces') { 'pieces' } else { 'items' }
    $writer = [IO.StringWriter]::new()
    try {
        $transforms[$kind].Transform($file.FullName, $null, $writer)
        $result = [xml]$writer.ToString()
    }
    finally { $writer.Dispose() }
    $before = @($source.SelectNodes('//*'))
    $after = @($result.SelectNodes('//*'))
    if ($before.Count -ne $after.Count) { throw "Changed element count: $($file.Name)" }
    for ($i = 0; $i -lt $before.Count; $i++) {
        $old = $before[$i]
        $new = $after[$i]
        if ($old.Name -cne $new.Name) { throw "Changed element order: $($file.Name)" }
        foreach ($attribute in $old.Attributes) {
            if (-not $new.HasAttribute($attribute.Name)) { throw "Removed attribute: $($attribute.Name)" }
        }
        foreach ($attribute in $new.Attributes) {
            $key = $null
            if ($old.Name -eq 'Armor' -and $attribute.Name -in @('head_armor', 'body_armor', 'arm_armor', 'leg_armor')) {
                $key = $old.ParentNode.ParentNode.id + '/' + $attribute.Name
            }
            elseif ($old.Name -eq 'Weapon' -and $attribute.Name -in @('body_armor', 'hit_points')) {
                $key = $old.ParentNode.ParentNode.id + '/' + $attribute.Name
            }
            elseif ($old.Name -in @('Thrust', 'Swing') -and $attribute.Name -eq 'damage_factor') {
                $key = $old.ParentNode.ParentNode.id + '/' + $old.Name
            }
            if ($key) {
                $targets[$kind][$key] = $true
                if (-not $rules[$kind].ContainsKey($key)) {
                    $missing.Add($key)
                }
                elseif ($attribute.Value -cne $rules[$kind][$key]) {
                    throw "Rule did not apply: $key"
                }
            }
            elseif (-not $old.HasAttribute($attribute.Name) -or $old.GetAttribute($attribute.Name) -cne $attribute.Value) {
                throw "Changed non-balance property: $($file.Name)/$($old.Name)/$($attribute.Name)"
            }
        }
    }
    foreach ($node in $result.SelectNodes('//Item[@name] | //CraftedItem[@name] | //CraftingPiece[@name]')) {
        if ($node.name -notmatch '^\{=([^}]+)\}' -or -not $translations.ContainsKey($Matches[1])) {
            throw "Unresolved Chinese name: $($node.id)"
        }
        $counts.names++
    }
    $counts.items += $result.SelectNodes('/Items/Item').Count
    $counts.crafted += $result.SelectNodes('/Items/CraftedItem').Count
    $counts.pieces += $result.SelectNodes('/CraftingPieces/CraftingPiece').Count
    if ($kind -eq 'items') {
        foreach ($id in @('mc_horse_plate_armor', 'mc_horse_plate_armor_light')) {
            $horse = $result.SelectSingleNode("/Items/Item[@id='$id']/ItemComponent/Armor")
            if ($horse) {
                foreach ($field in @('head_armor', 'body_armor', 'arm_armor', 'leg_armor')) {
                    if (-not $horse.HasAttribute($field)) { $missing.Add("$id/$field") }
                }
            }
        }
    }
}
if ($missing.Count -gt 0) {
    throw ("Uncovered current balance fields (" + $missing.Count + "): " + ($missing -join ', '))
}
# A foreign module must pass through without receiving MajesticCollection values.
$foreign = '<Items><Item id="foreign_item" name="Foreign"><ItemComponent><Armor body_armor="9" material_type="Cloth" /></ItemComponent></Item></Items>'
$reader = [Xml.XmlReader]::Create([IO.StringReader]::new($foreign))
$writer = [IO.StringWriter]::new()
try {
    $transforms.items.Transform($reader, $null, $writer)
    if (([xml]$writer.ToString()).DocumentElement.OuterXml -cne ([xml]$foreign).DocumentElement.OuterXml) { throw 'Foreign item modified' }
}
finally { $reader.Dispose(); $writer.Dispose() }
$reader = [Xml.XmlReader]::Create([IO.StringReader]::new('<CraftingPieces><CraftingPiece id="foreign_piece"><BladeData><Swing damage_type="Cut" damage_factor="4.2" /></BladeData></CraftingPiece></CraftingPieces>'))
$writer = [IO.StringWriter]::new()
try {
    $transforms.pieces.Transform($reader, $null, $writer)
    if (([xml]$writer.ToString()).CraftingPieces.CraftingPiece.BladeData.Swing.damage_factor -ne '4.2') { throw 'Foreign piece modified' }
}
finally { $reader.Dispose(); $writer.Dispose() }
$modulesRoot = Split-Path ([IO.Path]::GetFullPath($BaseModule)) -Parent
$descriptionPath = Join-Path $modulesRoot 'Native/ModuleData/weapon_descriptions.xml'
$transform = [Xml.Xsl.XslCompiledTransform]::new()
$transform.Load((Join-Path $BaseModule 'ModuleData/XSLT/mc_weapon_descriptions.xslt'))
$writer = [IO.StringWriter]::new()
try {
    $transform.Transform($descriptionPath, $null, $writer)
    $descriptions = [xml]$writer.ToString()
}
finally { $writer.Dispose() }
if ($descriptions.SelectNodes("/WeaponDescriptions/WeaponDescription[starts-with(@id,'OneHanded')]/AvailablePieces/AvailablePiece[starts-with(@id,'gilded_dragon_sword_')]").Count -ne 0) {
    throw 'Gilded dragon single-handed mode enabled'
}
if ($descriptions.SelectNodes("/WeaponDescriptions/WeaponDescription[@id='TwoHandedSword']/AvailablePieces/AvailablePiece[starts-with(@id,'gilded_dragon_sword_')]").Count -ne 4) {
    throw 'Gilded dragon two-handed parts missing'
}
$manifest = [xml][IO.File]::ReadAllText((Join-Path $patchRoot 'SubModule.xml'))
foreach ($id in @('RBM', 'MajesticCollection')) {
    if (-not $manifest.SelectSingleNode("/Module/DependedModules/DependedModule[@Id='$id' and @Optional='false']")) { throw "Missing dependency: $id" }
}
$legacy = 0
foreach ($kind in @('items', 'pieces')) {
    foreach ($key in $rules[$kind].Keys) {
        if (-not $targets[$kind].ContainsKey($key)) { $legacy++ }
    }
}
Write-Output "PASS: $($counts.items) items; $($counts.crafted) crafted weapons; $($counts.pieces) crafting pieces; $($counts.names) Chinese names."
Write-Output "PASS: $($targets.items.Count) protection fields; $($targets.pieces.Count) damage factors; $legacy retained legacy rules."
Write-Output 'PASS: non-balance attributes, foreign modules, required dependencies and two-handed-only dragon sword.'