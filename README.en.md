# Majestic Collection — RBM Compatibility Patch

[简体中文](README.md) | [English](README.en.md) | [日本語](README.ja.md)

Updated on 2026-11-14. Patch version: v1.3.8. This update adds RBM compatibility for the new rope-free Gothic Graf cuirass, the plumed gilded acanthus helmet and the gilded Lucerne hammer. The two previous versions covered the full Gothic Plate sets (polished and Graf) and the Tercio cabasset helmet. Official XML data from RBM v4.5.4 / Bannerlord v1.4.8 is used as a reference. RBM is not installed on the development machine. XML/XSLT transformation checks have passed; gameplay balance has not been tested in game.

## Installation and load order

Place MajesticCollection and MajesticCollection_RBM_Patch side by side in the game's Modules folder.

Enable them in this order: RBM → MajesticCollection → MajesticCollection_RBM_Patch. The patch must load after both RBM and the base mod. If you do not use RBM, enable only MajesticCollection.

## What's included in this update

- Adds 3 rules for the rope-free Gothic Graf cuirass (mc_gothic_plate_blackend_norope): head, body and leg. Base values 15/65/20 at 20 kg match the roped version exactly, so the same 30/120/45 targets apply.
- Adds 1 rule for the plumed gilded acanthus helmet (mc_gilded_acanthus_helmet_pluma). Base value 60 at 4 kg, plate, identical to the plain and dragon variants, so it takes the same 130.
- Adds 1 damage rule for the swing of the gilded Lucerne hammer head (lucernehammerg_point), set to 1.35, the same tier as the plain Lucerne hammer.
- Adds 7 rules for the Gothic Graf Plate set: mc_gothic_plate_blackend (head, body and leg), mc_gothic_sallet_helmet_blackend, mc_gothic_pauldron_blackend, mc_gothic_gauntlets_blackend and mc_gothic_boots_blackend. Every base value, weight and material matches the polished set, so the same targets apply.
- Adds 1 damage rule for the swing of the Lucerne hammer head (lucernehammer_point), set to 1.35 (two-handed tier, following klingenmeister_blade).
- Adds 7 rules for the full Gothic Plate set: mc_gothic_plate (head, body and leg), mc_gothic_sallet_helmet, mc_gothic_pauldron, mc_gothic_gauntlets and mc_gothic_boots.
- Adds 1 rule for the new mc_tercio_cabasset_helmet.
- Adds 4 rules for mc_terciopikeman_pauldron, terciopike_point and tercionoblerapier_blade.
- Adds 3 rules for the new mc_tercio_burgonet helmet and the terciorapier_blade.
- Adds 1 rule for the new mc_terciopikeman_gloves.
- Adds 2 rules for the split mc_tercioelite_helmet_b and the new mc_terciopikeman_shoes.
- Adds 10 rules covering the 6 Tercio series items: elite helmet, elite cuirass, elite shoulders, elite boots, elite gauntlets, and pikeman cuirass.
- Every target value reuses an existing rule whose base-module protection value is identical, so no new balance judgement is introduced.
- Removes 14 legacy rules that pointed at items no longer present in the base mod: the old knightly series, the gold_maxmilian series, and two ids that have since been renamed. No orphan rules remain.
- Covers the base mod's 68 equipment items, 19 crafted weapons, and 53 crafting pieces; 106 protection fields and 30 damage factors, with no gaps and no partial coverage.
- All 140 item and piece names inherit the base mod's Chinese translations. The gilded dragon sword remains two-handed only.
- Starting with this version, the patch is released under the **MIT License**; see [LICENSE](LICENSE).

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

## License

Released under the **MIT License**; see [LICENSE](LICENSE) for the full text. You may use, modify, and redistribute this patch freely, including commercially, as long as the copyright notice is retained.

This patch contains no files from RBM or MajesticCollection. It only transforms the data they provide at load time. RBM and MajesticCollection remain under their respective authors' terms.
