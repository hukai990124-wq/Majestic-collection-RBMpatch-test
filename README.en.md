# Majestic Collection — RBM Compatibility Patch

[简体中文](README.md) | [English](README.en.md) | [日本語](README.ja.md)

Updated on 2026-10-25. Patch version: v1.2.0. This update completes equipment and weapon compatibility for the current MajesticCollection using official XML data from RBM v4.5.4 / Bannerlord v1.4.8 as a reference. RBM is not installed on the development machine. XML/XSLT transformation checks have passed; gameplay balance has not been tested in game.

## Installation and load order

Place MajesticCollection and MajesticCollection_RBM_Patch side by side in the game's Modules folder.

Enable them in this order: RBM → MajesticCollection → MajesticCollection_RBM_Patch. The patch must load after both RBM and the base mod. If you do not use RBM, enable only MajesticCollection.

## What's included in this update

- Covers the base mod's current 44 equipment items, 14 crafted weapons, and 39 crafting pieces.
- Adds missing compatibility settings for Peaky Blinder clothing, Landsknecht and Doppelsoldner equipment, the dragon-decorated helmet, two horse armors, and the Dragon Boucher shield.
- Adds damage-factor settings for the light jousting lance, rondel dagger, gilded crescent saber, side sword, decorated mace, and gilded dragon sword.
- Adds 44 field rules, bringing current coverage to 72 protection fields and 23 damage factors. Both horse armors receive RBM's regional protection fields.
- Preserves all previous compatibility values and retains 14 legacy item-field rules for older base-mod versions. Full coverage is verified against the current base mod.
- All 97 item and piece names continue to inherit the base mod's Chinese translations. The gilded dragon sword remains two-handed only.

See [BALANCE_UPDATES.md](BALANCE_UPDATES.md) for every added value, reference item, and rationale. These values are compatibility balance targets, not combat-tested results.

## How it works

This is a data-only incremental patch. It does not duplicate item definitions, meshes, textures, or DLLs. Two XSLT files adjust armor and shield protection and crafting-piece damage factors at load time. Missing regional protection attributes are also added to horse armor at load time.

Names, localization IDs, meshes, lengths, weights, materials, grip positions, damage types, weapon modes, merchandise flags, and crafting-template membership remain as defined in the base mod. Handles, guards, and pommels do not need additional blade damage data; existing crafted weapons use the transformed pieces directly.

Disabling this patch restores the base mod's original values. The patch does not modify base-mod files.

## Verification

Run the following in PowerShell from the patch folder:

    & './tools/verify_patch.ps1'

Use -BaseModule 'another/path/MajesticCollection' to specify a different base-mod location. The script checks that every existing protection and damage field has a rule, that XSLT applies the intended values, that Chinese localization references resolve, and that the gilded dragon sword remains two-handed only. It also checks that other attributes and items from unrelated modules remain unchanged.

If new equipment is later added to the base mod without corresponding RBM rules, the script reports the missing fields and fails.

## Sources

Official RBM source: [Fellow93/RealisticBattleProject](https://github.com/Fellow93/RealisticBattleProject/tree/7f9069b6e111c7ce124f07545f0edef8202042bf/RBMXML).

This update uses the fixed reference commit 7f9069b6e111c7ce124f07545f0edef8202042bf. Its SubModule.xml specifies RBM v4.5.4 / Bannerlord v1.4.8. Check your installed game and RBM versions before use.
