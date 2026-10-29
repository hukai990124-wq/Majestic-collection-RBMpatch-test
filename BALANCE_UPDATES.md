# RBM Balance Updates

最新更新 / Latest / 最新：2026-10-30

点击语言标题展开或收起。 / Click a language to expand or collapse. / 言語名をクリックして開閉してください。

<details>
<summary><strong>简体中文</strong></summary>

## RBM 补齐记录：2026-10-30

### 词条清理

删除 14 条指向**不存在物品**的遗留规则。以下 9 个 id 已在本模组及全部 Modules 目录中检索，确认无任何定义或引用：

| 遗留 id | 删除的字段 | 处理说明 |
| --- | --- | --- |
| mc_knightly_battle_gauntlets | arm_armor | 删除；主模组无此物品，也无可对应的替代 id |
| mc_knightly_battle_boots | leg_armor | 同上 |
| mc_knightly_battle_helmet | head_armor | 同上 |
| mc_knightly_shoulders | head_armor、body_armor | 同上 |
| mc_knightly_plate | head_armor、body_armor、leg_armor | 同上 |
| mc_gold_maxmilian_armor | head_armor、body_armor、leg_armor | 同上 |
| mc_gold_maxmilian_shoulder | body_armor | 同上 |
| mc_landsknecht_helmet | head_armor | 删除；现役 id 为 mc_landsknecht_doppelsoldner_helmet，其规则已存在且同为 120 |
| mc_landsknecht_shoes | leg_armor | 删除；现役 id 为 mc_landsknecht_schuhe，其规则已存在（22） |

规则总数由 96 条降至 82 条。历史章节中出现的「沿用旧补丁 knightly_plate 档位」等表述，指的是数值档位的历史来源，对应规则本身已移除。

### Tercio 系列补齐

本次新增 10 条规则，覆盖主模组新加入的西班牙方阵（Tercio）系列共 6 件装备。所有目标值均套用本补丁中**原始防护值完全相同**的既有规则，未引入新的平衡判断；映射关系不是原作者为本模组提供的官方配置。

| 类别 | 物品/字段 | 新目标值 | 参考与依据 |
| --- | --- | --- | --- |
| 装备 | mc_tercioelite_helmet/head_armor | 120 | 原始头部防护 55，与 mc_royal_conqueror_helmet 完全相同，沿用其目标值 |
| 装备 | mc_tercioelite_plate/head_armor | 25 | 原始 15/60/15，与 mc_royal_conqueror_cuirass（15/60/12）同档，沿用其头部值 |
| 装备 | mc_tercioelite_plate/body_armor | 110 | 同档胸甲，沿用 mc_royal_conqueror_cuirass 躯干值 |
| 装备 | mc_tercioelite_plate/leg_armor | 35 | 同档胸甲腿部值；与 mc_royal_conqueror_cuirass 及 doppelsoldner_lite_plate 一致 |
| 装备 | mc_tercioelite_shoulders/body_armor | 40 | 原始 25，与镀金花草纹肩甲、马克西米利安肩甲、维吉亚队长肩甲同值，沿用其目标值 |
| 装备 | mc_tercioelite_boots/leg_armor | 46 | 原始 25，与 mc_royal_conqueror_boots 同值，沿用其目标值 |
| 装备 | mc_tercioelite_gauntlets/arm_armor | 45 | 原始 25，与 mc_royal_conqueror_gauntlets 同值，沿用其目标值 |
| 装备 | mc_terciopikeman_cuirass/head_armor | 20 | 原始 10/50/15，与 doppelsoldner_lite_plate（10/60/15）同档 |
| 装备 | mc_terciopikeman_cuirass/body_armor | 105 | 同上，沿用该档位躯干值 |
| 装备 | mc_terciopikeman_cuirass/leg_armor | 35 | 同上，沿用该档位腿部值 |

### 说明

主模组把 `mc_tercioelite_helmet` 这个 id 定义了两次（两套不同 mesh，同一 id）。XSLT 规则按 id 匹配，因此一条规则同时作用于两者，无需重复添加。此处未修改主模组，仅记录该现象。

### 校验结果

`rbm_compat_items.xslt` 规则共 82 条，全部唯一、数值合法。主模组 50 件 Item 的防护字段已 100% 覆盖，无遗漏项、无部分覆盖项；补丁内已无指向不存在物品的孤儿规则。

`tools/verify_patch.ps1` 全流程当前无法跑通：主模组 `std_majestic_collection_strings_xml-zho-CN.xml` 中缺少 `MCTercioPikemanCuirass` 语言串，脚本在语言校验阶段中止。该缺口属主模组问题，不在本补丁修改范围内。

---

## RBM 补齐记录：2026-10-25

本次新增 44 条规则。下表数值是本补丁的适配目标；标注“旧补丁”的项目沿用旧补丁同类装备的设计，其他项目参照固定提交中的 RBM 官方数据。相似物品映射属于平衡判断，不是原作者为本模组提供的官方配置。

马铠分别参照 mail_and_plate_barding 与 half_mail_and_plate_barding；两者躯干值相同，轻型马铠的后部覆盖较低。head_armor、arm_armor、leg_armor 在主模组缺失时由 XSLT 补入。国土佣仆胸甲按旧补丁骑士胸甲档位暂定，主模组原有材质不改。实际效果需在 RBM 内测试。

官方参考目录：[Fellow93/RealisticBattleProject](https://github.com/Fellow93/RealisticBattleProject/tree/7f9069b6e111c7ce124f07545f0edef8202042bf/RBMXML)

| 类别 | 物品/字段 | 新目标值 | 参考与依据 |
| --- | --- | --- | --- |
| 装备 | mc_peaky_hat/head_armor | 6 | 参照 RBM head_armors 中的 merchants_hat；市民帽 |
| 装备 | mc_peaky_cloth/head_armor | 0 | 市民外套不提供头部防护 |
| 装备 | mc_peaky_cloth/body_armor | 6 | 参照 RBM body_armors 中的 fine_town_tunic |
| 装备 | mc_peaky_cloth/leg_armor | 5 | 参照 RBM body_armors 中的 fine_town_tunic |
| 装备 | mc_peaky_cloth/arm_armor | 0 | 保留主模组手臂防护为零的设定 |
| 装备 | mc_peaky_shoes/leg_armor | 19 | 参照 RBM leg_armors 中的 leather_shoes |
| 装备 | mc_peaky_gloves/arm_armor | 24 | 参照 RBM arm_armors 中的 leather_gloves |
| 装备 | mc_landsknecht_doppelsoldner_helmet/head_armor | 120 | 沿用旧 mc_landsknecht_helmet 的目标值，应用于当前头盔编号 |
| 装备 | mc_landsknecht_hat/head_armor | 6 | 参照 RBM head_armors 中的 merchants_hat；布帽 |
| 装备 | mc_doppelsoldner_shoes/leg_armor | 20 | 参照 RBM leg_armors 中的 fine_town_boots |
| 装备 | mc_landsknecht_doppelsoldner_lite_plate/head_armor | 20 | 沿用旧补丁 knightly_plate 的防护档位 |
| 装备 | mc_landsknecht_doppelsoldner_lite_plate/body_armor | 105 | 沿用旧补丁 knightly_plate 的防护档位 |
| 装备 | mc_landsknecht_doppelsoldner_lite_plate/leg_armor | 35 | 沿用旧补丁 knightly_plate 的防护档位 |
| 装备 | mc_landsknecht_cloth/head_armor | 0 | 布制服装不提供头部防护 |
| 装备 | mc_landsknecht_cloth/body_armor | 14 | 参照 RBM body_armors 中的 nordic_padded_cloth |
| 装备 | mc_landsknecht_cloth/leg_armor | 14 | 参照 RBM body_armors 中的 nordic_padded_cloth |
| 装备 | mc_landsknecht_cuirass/head_armor | 20 | 暂按旧补丁 knightly_plate 的胸甲档位设定，原材质不变 |
| 装备 | mc_landsknecht_cuirass/body_armor | 105 | 暂按旧补丁 knightly_plate 的胸甲档位设定，原材质不变 |
| 装备 | mc_landsknecht_cuirass/leg_armor | 35 | 暂按旧补丁 knightly_plate 的胸甲档位设定，原材质不变 |
| 装备 | mc_landsknecht_schuhe/leg_armor | 22 | 参照 RBM leg_armors 中的 strapped_shoes |
| 装备 | mc_landsknecht_doppelsoldner_gloves/arm_armor | 24 | 参照 RBM arm_armors 中的 leather_gloves |
| 装备 | mc_landsknecht_doppelsoldner_cape/head_armor | 15 | 保留原有领部防护 |
| 装备 | mc_landsknecht_doppelsoldner_cape/body_armor | 33 | 参照 RBM shoulder_armors 中的 pauldron_with_cape |
| 装备 | mc_gilded_acanthus_helmet_dragon/head_armor | 130 | 与现有镀金花草纹头盔规则使用相同防护值 |
| 装备 | mc_horse_plate_armor/body_armor | 47 | 参照 RBM horse_armors 中的 mail_and_plate_barding |
| 装备 | mc_horse_plate_armor/head_armor | 90 | 参照 RBM horse_armors 中的 mail_and_plate_barding |
| 装备 | mc_horse_plate_armor/arm_armor | 57 | 参照 RBM horse_armors 中的 mail_and_plate_barding |
| 装备 | mc_horse_plate_armor/leg_armor | 47 | 参照 RBM horse_armors 中的 mail_and_plate_barding |
| 装备 | mc_horse_plate_armor_light/body_armor | 47 | 参照 RBM horse_armors 中的 half_mail_and_plate_barding |
| 装备 | mc_horse_plate_armor_light/head_armor | 90 | 参照 RBM horse_armors 中的 half_mail_and_plate_barding |
| 装备 | mc_horse_plate_armor_light/arm_armor | 57 | 参照 RBM horse_armors 中的 half_mail_and_plate_barding |
| 装备 | mc_horse_plate_armor_light/leg_armor | 5 | 参照 RBM horse_armors 中的 half_mail_and_plate_barding |
| 装备 | maximilian_boucheshield/body_armor | 6 | 参照 RBM shields 中的 heavy_heater_shield_shoulder；加固木盾 |
| 装备 | maximilian_boucheshield/hit_points | 710 | 参照 RBM shields 中的 heavy_heater_shield_shoulder |
| 部件 | light_jousting_point/Thrust | 1.30 | 参照旧补丁同类竞技枪头 maximilian_jousting_lance_blade |
| 部件 | maximilian_rondel_blade/Thrust | 1.00 | 参照 RBM sword_blades 中的 dagger_blade_6；刺击匕首 |
| 部件 | maximilian_rondel_blade/Swing | 0.90 | 参照 RBM sword_blades 中的 dagger_blade_6；刺击匕首 |
| 部件 | gilded_crescent_blade/Thrust | 1.00 | 参照 RBM sword_blades 中的 battania_blade_5 |
| 部件 | gilded_crescent_blade/Swing | 1.20 | 参照 RBM sword_blades 中的 battania_blade_5 |
| 部件 | side_blade/Thrust | 1.05 | 参照旧补丁同类单手剑刃 conquistador_blade |
| 部件 | side_blade/Swing | 1.00 | 参照旧补丁同类单手剑刃 conquistador_blade |
| 部件 | decorated_mace_blade/Swing | 1.30 | 参照 RBM mace_pieces 中的 mace_head_13；皇家战锤 |
| 部件 | gilded_dragon_sword_blade/Thrust | 1.10 | 参照旧补丁双手剑刃 klingenmeister_blade |
| 部件 | gilded_dragon_sword_blade/Swing | 1.35 | 参照旧补丁双手剑刃 klingenmeister_blade |

### 保留行为

原有 RBM 数值规则未改，旧版本遗留规则未删。所有未列于上表的名称、部件结构、动作和材质均不变。组合武器继续引用主模组部件，无需重复添加 CraftedItem 定义。

### 校验结果

tools/verify_patch.ps1：44 件装备、14 把组合武器、39 个部件、97 个中文关联全部通过。72 个防护字段和 23 个伤害系数均有明确适配规则。外部物品不变，双头龙剑不含单手注册。尚未进行游戏内验证。

</details>

<details>
<summary><strong>English</strong></summary>

## RBM compatibility additions: 2026-10-30

### Rule cleanup

Removed 14 legacy rules that targeted **items which no longer exist**. All nine ids below were searched across this module and every other Modules directory and found to have no definition or reference anywhere:

| Legacy id | Removed fields | Disposition |
| --- | --- | --- |
| mc_knightly_battle_gauntlets | arm_armor | Removed; no such item in the base module, no replacement id |
| mc_knightly_battle_boots | leg_armor | Same |
| mc_knightly_battle_helmet | head_armor | Same |
| mc_knightly_shoulders | head_armor, body_armor | Same |
| mc_knightly_plate | head_armor, body_armor, leg_armor | Same |
| mc_gold_maxmilian_armor | head_armor, body_armor, leg_armor | Same |
| mc_gold_maxmilian_shoulder | body_armor | Same |
| mc_landsknecht_helmet | head_armor | Removed; the live id is mc_landsknecht_doppelsoldner_helmet, whose rule already exists at the same value 120 |
| mc_landsknecht_shoes | leg_armor | Removed; the live id is mc_landsknecht_schuhe, whose rule already exists (22) |

Total rule count drops from 96 to 82. References to "knightly_plate profile" in earlier sections describe the historical source of a value tier; the rules themselves are gone.

### Tercio series additions

This update adds 10 rules covering the 6 Tercio series items newly added to the base module. Every target value reuses an existing rule whose base-module protection value is **exactly identical**, so no new balance judgement is introduced; these mappings are not an official configuration provided by RBM's authors for this mod.

| Category | Item / field | New target value | Reference and rationale |
| --- | --- | --- | --- |
| items | mc_tercioelite_helmet/head_armor | 120 | Base head protection 55, identical to mc_royal_conqueror_helmet; reuses its target value |
| items | mc_tercioelite_plate/head_armor | 25 | Base 15/60/15, same tier as mc_royal_conqueror_cuirass (15/60/12); reuses its head value |
| items | mc_tercioelite_plate/body_armor | 110 | Same cuirass tier; reuses mc_royal_conqueror_cuirass torso value |
| items | mc_tercioelite_plate/leg_armor | 35 | Same cuirass tier leg value; consistent with mc_royal_conqueror_cuirass and doppelsoldner_lite_plate |
| items | mc_tercioelite_shoulders/body_armor | 40 | Base 25, identical to gilded acanthus, maxmilian and vaegir captain shoulders; reuses their target value |
| items | mc_tercioelite_boots/leg_armor | 46 | Base 25, identical to mc_royal_conqueror_boots; reuses its target value |
| items | mc_tercioelite_gauntlets/arm_armor | 45 | Base 25, identical to mc_royal_conqueror_gauntlets; reuses its target value |
| items | mc_terciopikeman_cuirass/head_armor | 20 | Base 10/50/15, same tier as doppelsoldner_lite_plate (10/60/15) |
| items | mc_terciopikeman_cuirass/body_armor | 105 | Same tier; reuses that tier's torso value |
| items | mc_terciopikeman_cuirass/leg_armor | 35 | Same tier; reuses that tier's leg value |

### Notes

The base module declares the id `mc_tercioelite_helmet` twice (two different meshes, one id). XSLT rules match on item id, so a single rule applies to both; no duplicate rule is needed. The base module was not modified; this is recorded only as an observation.

### Verification results

`rbm_compat_items.xslt` now holds 82 rules, all unique and numerically valid. Protection fields for all 50 base-module items are covered 100%, with no gaps and no partial coverage; the patch no longer contains any rule pointing at a non-existent item.

The full `tools/verify_patch.ps1` run currently cannot complete: the base module's `std_majestic_collection_strings_xml-zho-CN.xml` lacks the `MCTercioPikemanCuirass` string, so the script aborts at the localization check. That gap belongs to the base module and is outside this patch's scope.

---

## RBM compatibility additions: 2026-10-25

This update adds 44 rules. The table lists this patch's compatibility targets. Entries marked “Existing patch” follow the previous patch's settings for similar equipment; other entries use official RBM data from a fixed reference commit. Matching similar items is a balance decision, not an official configuration provided by RBM's authors for this mod.

The horse armors use mail_and_plate_barding and half_mail_and_plate_barding as references. Both have the same torso protection, while the lighter armor provides less rear coverage. XSLT adds head_armor, arm_armor, and leg_armor when these attributes are absent from the base mod. The Landsknecht cuirass provisionally follows the previous patch's knightly chest-armor profile; its original material is unchanged. Actual performance needs testing in RBM.

Official reference directory：[Fellow93/RealisticBattleProject](https://github.com/Fellow93/RealisticBattleProject/tree/7f9069b6e111c7ce124f07545f0edef8202042bf/RBMXML)

| Category | Item / field | New target value | Reference and rationale |
| --- | --- | --- | --- |
| items | mc_peaky_hat/head_armor | 6 | RBM head_armors: merchants_hat; civilian hat |
| items | mc_peaky_cloth/head_armor | 0 | No head coverage from a civilian coat |
| items | mc_peaky_cloth/body_armor | 6 | RBM body_armors: fine_town_tunic |
| items | mc_peaky_cloth/leg_armor | 5 | RBM body_armors: fine_town_tunic |
| items | mc_peaky_cloth/arm_armor | 0 | Preserve base mod zero arm protection |
| items | mc_peaky_shoes/leg_armor | 19 | RBM leg_armors: leather_shoes |
| items | mc_peaky_gloves/arm_armor | 24 | RBM arm_armors: leather_gloves |
| items | mc_landsknecht_doppelsoldner_helmet/head_armor | 120 | Retained legacy mc_landsknecht_helmet target; current helmet ID |
| items | mc_landsknecht_hat/head_armor | 6 | RBM head_armors: merchants_hat; cloth hat |
| items | mc_doppelsoldner_shoes/leg_armor | 20 | RBM leg_armors: fine_town_boots |
| items | mc_landsknecht_doppelsoldner_lite_plate/head_armor | 20 | Existing patch knightly_plate protection profile |
| items | mc_landsknecht_doppelsoldner_lite_plate/body_armor | 105 | Existing patch knightly_plate protection profile |
| items | mc_landsknecht_doppelsoldner_lite_plate/leg_armor | 35 | Existing patch knightly_plate protection profile |
| items | mc_landsknecht_cloth/head_armor | 0 | No head coverage from a cloth outfit |
| items | mc_landsknecht_cloth/body_armor | 14 | RBM body_armors: nordic_padded_cloth |
| items | mc_landsknecht_cloth/leg_armor | 14 | RBM body_armors: nordic_padded_cloth |
| items | mc_landsknecht_cuirass/head_armor | 20 | Existing patch knightly_plate profile; provisional cuirass classification, material unchanged |
| items | mc_landsknecht_cuirass/body_armor | 105 | Existing patch knightly_plate profile; provisional cuirass classification, material unchanged |
| items | mc_landsknecht_cuirass/leg_armor | 35 | Existing patch knightly_plate profile; provisional cuirass classification, material unchanged |
| items | mc_landsknecht_schuhe/leg_armor | 22 | RBM leg_armors: strapped_shoes |
| items | mc_landsknecht_doppelsoldner_gloves/arm_armor | 24 | RBM arm_armors: leather_gloves |
| items | mc_landsknecht_doppelsoldner_cape/head_armor | 15 | Preserve existing collar protection |
| items | mc_landsknecht_doppelsoldner_cape/body_armor | 33 | RBM shoulder_armors: pauldron_with_cape |
| items | mc_gilded_acanthus_helmet_dragon/head_armor | 130 | Same protection as existing gilded acanthus helmet rule |
| items | mc_horse_plate_armor/body_armor | 47 | RBM horse_armors: mail_and_plate_barding |
| items | mc_horse_plate_armor/head_armor | 90 | RBM horse_armors: mail_and_plate_barding |
| items | mc_horse_plate_armor/arm_armor | 57 | RBM horse_armors: mail_and_plate_barding |
| items | mc_horse_plate_armor/leg_armor | 47 | RBM horse_armors: mail_and_plate_barding |
| items | mc_horse_plate_armor_light/body_armor | 47 | RBM horse_armors: half_mail_and_plate_barding |
| items | mc_horse_plate_armor_light/head_armor | 90 | RBM horse_armors: half_mail_and_plate_barding |
| items | mc_horse_plate_armor_light/arm_armor | 57 | RBM horse_armors: half_mail_and_plate_barding |
| items | mc_horse_plate_armor_light/leg_armor | 5 | RBM horse_armors: half_mail_and_plate_barding |
| items | maximilian_boucheshield/body_armor | 6 | RBM shields: heavy_heater_shield_shoulder; reinforced wooden shield |
| items | maximilian_boucheshield/hit_points | 710 | RBM shields: heavy_heater_shield_shoulder |
| pieces | light_jousting_point/Thrust | 1.30 | Existing patch maximilian_jousting_lance_blade; same lance class |
| pieces | maximilian_rondel_blade/Thrust | 1.00 | RBM sword_blades: dagger_blade_6, poniard |
| pieces | maximilian_rondel_blade/Swing | 0.90 | RBM sword_blades: dagger_blade_6, poniard |
| pieces | gilded_crescent_blade/Thrust | 1.00 | RBM sword_blades: battania_blade_5 |
| pieces | gilded_crescent_blade/Swing | 1.20 | RBM sword_blades: battania_blade_5 |
| pieces | side_blade/Thrust | 1.05 | Existing patch conquistador_blade; comparable one-handed sword |
| pieces | side_blade/Swing | 1.00 | Existing patch conquistador_blade; comparable one-handed sword |
| pieces | decorated_mace_blade/Swing | 1.30 | RBM mace_pieces: mace_head_13, royal mace |
| pieces | gilded_dragon_sword_blade/Thrust | 1.10 | Existing patch klingenmeister_blade; two-handed sword |
| pieces | gilded_dragon_sword_blade/Swing | 1.35 | Existing patch klingenmeister_blade; two-handed sword |

### Preserved behavior

Existing RBM value rules are unchanged, and legacy rules have not been removed. Names, piece structures, animations, and materials not listed in the table remain unchanged. Crafted weapons continue to reference the base mod's pieces; duplicate CraftedItem definitions are unnecessary.

### Verification results

tools/verify_patch.ps1 passed for 44 equipment items, 14 crafted weapons, 39 crafting pieces, and 97 Chinese localization references. All 72 protection fields and 23 damage factors have explicit compatibility rules. Unrelated items remain unchanged, and the gilded dragon sword has no one-handed registrations. In-game verification has not been performed.

</details>

<details>
<summary><strong>日本語</strong></summary>

## RBM 互換設定の補完記録：2026-10-30

### ルール整理

**存在しないアイテム**を対象としていた 14 件の旧ルールを削除しました。以下の 9 個の id は本 MOD および全 Modules ディレクトリを検索し、定義も参照も存在しないことを確認済みです。

| 旧 id | 削除した項目 | 対応 |
| --- | --- | --- |
| mc_knightly_battle_gauntlets | arm_armor | 削除。本体 MOD に該当アイテムなし、代替 id もなし |
| mc_knightly_battle_boots | leg_armor | 同上 |
| mc_knightly_battle_helmet | head_armor | 同上 |
| mc_knightly_shoulders | head_armor、body_armor | 同上 |
| mc_knightly_plate | head_armor、body_armor、leg_armor | 同上 |
| mc_gold_maxmilian_armor | head_armor、body_armor、leg_armor | 同上 |
| mc_gold_maxmilian_shoulder | body_armor | 同上 |
| mc_landsknecht_helmet | head_armor | 削除。現行 id は mc_landsknecht_doppelsoldner_helmet で、同値 120 のルールが既に存在 |
| mc_landsknecht_shoes | leg_armor | 削除。現行 id は mc_landsknecht_schuhe で、ルール（22）が既に存在 |

ルール総数は 96 件から 82 件に減少しました。過去の章にある「従来の knightly_plate の防御設定」という記述は数値帯の由来を示すものであり、該当ルール自体は削除済みです。

### テルシオシリーズの補完

本体 MOD に新規追加されたテルシオ（Tercio）シリーズ 6 点を対象に、10 件のルールを追加しました。目標値はすべて、本体 MOD 側の防御値が**完全に一致する**既存ルールを踏襲しており、新たなバランス判断は行っていません。この対応付けは RBM 作者が本 MOD 向けに提供した公式設定ではありません。

| 分類 | アイテム / 項目 | 新しい設定値 | 参照元と設定理由 |
| --- | --- | --- | --- |
| 装備 | mc_tercioelite_helmet/head_armor | 120 | 本体の頭部防御 55。mc_royal_conqueror_helmet と同値のため、その目標値を踏襲 |
| 装備 | mc_tercioelite_plate/head_armor | 25 | 本体 15/60/15。mc_royal_conqueror_cuirass（15/60/12）と同帯のため、その頭部値を踏襲 |
| 装備 | mc_tercioelite_plate/body_armor | 110 | 同帯の胸甲。mc_royal_conqueror_cuirass の胴部値を踏襲 |
| 装備 | mc_tercioelite_plate/leg_armor | 35 | 同帯の脚部値。mc_royal_conqueror_cuirass および doppelsoldner_lite_plate と一致 |
| 装備 | mc_tercioelite_shoulders/body_armor | 40 | 本体 25。金装アカンサス肩甲・マクシミリアン肩甲・ヴァギル隊長肩甲と同値のため、その目標値を踏襲 |
| 装備 | mc_tercioelite_boots/leg_armor | 46 | 本体 25。mc_royal_conqueror_boots と同値のため、その目標値を踏襲 |
| 装備 | mc_tercioelite_gauntlets/arm_armor | 45 | 本体 25。mc_royal_conqueror_gauntlets と同値のため、その目標値を踏襲 |
| 装備 | mc_terciopikeman_cuirass/head_armor | 20 | 本体 10/50/15。doppelsoldner_lite_plate（10/60/15）と同帯 |
| 装備 | mc_terciopikeman_cuirass/body_armor | 105 | 同帯。その胴部値を踏襲 |
| 装備 | mc_terciopikeman_cuirass/leg_armor | 35 | 同帯。その脚部値を踏襲 |

### 補足

本体 MOD では `mc_tercioelite_helmet` という id が 2 回定義されています（別メッシュ・同一 id）。XSLT のルールは id で照合するため、1 件のルールが両方に適用されます。重複したルールは不要です。本体 MOD は変更しておらず、ここでは現象の記録のみ行います。

### 検証結果

`rbm_compat_items.xslt` のルールは計 82 件、すべて一意で数値も妥当です。本体 MOD の 50 点すべてについて防御フィールドが 100% 網羅されており、未対応・部分対応はありません。存在しないアイテムを指すルールは残っていません。

`tools/verify_patch.ps1` の全工程は現時点では完走できません。本体 MOD の `std_majestic_collection_strings_xml-zho-CN.xml` に `MCTercioPikemanCuirass` の文字列が存在しないため、スクリプトは翻訳検証の段階で中断します。この欠落は本体 MOD 側の問題であり、本パッチの対象外です。

---

## RBM 互換設定の補完記録：2026-10-25

今回の更新では 44 件のルールを追加しました。表の数値は、このパッチの互換設定における目標値です。「従来のパッチ」と記載した項目は同種の装備の既存設定を継承し、その他の項目は固定コミットの RBM 公式データを参照しています。類似アイテムの対応付けはバランス調整上の判断であり、RBM 作者が本 MOD 向けに提供した公式設定ではありません。

馬鎧はそれぞれ mail_and_plate_barding と half_mail_and_plate_barding を参照しています。胴部の防御値は同じですが、軽量型は後部の保護範囲が小さくなっています。本体 MOD に head_armor、arm_armor、leg_armor が存在しない場合、XSLT で追加します。ランツクネヒトの胸甲は暫定的に従来の騎士用胸甲と同等の設定とし、元の材質は変更しません。実際の効果は RBM 内での検証が必要です。

公式の参照ディレクトリ：[Fellow93/RealisticBattleProject](https://github.com/Fellow93/RealisticBattleProject/tree/7f9069b6e111c7ce124f07545f0edef8202042bf/RBMXML)

| 分類 | アイテム / 項目 | 新しい設定値 | 参照元と設定理由 |
| --- | --- | --- | --- |
| 装備 | mc_peaky_hat/head_armor | 6 | RBM head_armors の merchants_hat を参照（市民用の帽子） |
| 装備 | mc_peaky_cloth/head_armor | 0 | 市民用コートは頭部を保護しないため |
| 装備 | mc_peaky_cloth/body_armor | 6 | RBM body_armors の fine_town_tunic を参照 |
| 装備 | mc_peaky_cloth/leg_armor | 5 | RBM body_armors の fine_town_tunic を参照 |
| 装備 | mc_peaky_cloth/arm_armor | 0 | 本体 MOD の腕部防御値 0 を維持 |
| 装備 | mc_peaky_shoes/leg_armor | 19 | RBM leg_armors の leather_shoes を参照 |
| 装備 | mc_peaky_gloves/arm_armor | 24 | RBM arm_armors の leather_gloves を参照 |
| 装備 | mc_landsknecht_doppelsoldner_helmet/head_armor | 120 | 旧 mc_landsknecht_helmet の設定値を現在の兜 ID に適用 |
| 装備 | mc_landsknecht_hat/head_armor | 6 | RBM head_armors の merchants_hat を参照（布製の帽子） |
| 装備 | mc_doppelsoldner_shoes/leg_armor | 20 | RBM leg_armors の fine_town_boots を参照 |
| 装備 | mc_landsknecht_doppelsoldner_lite_plate/head_armor | 20 | 従来のパッチの knightly_plate 防御設定を継承 |
| 装備 | mc_landsknecht_doppelsoldner_lite_plate/body_armor | 105 | 従来のパッチの knightly_plate 防御設定を継承 |
| 装備 | mc_landsknecht_doppelsoldner_lite_plate/leg_armor | 35 | 従来のパッチの knightly_plate 防御設定を継承 |
| 装備 | mc_landsknecht_cloth/head_armor | 0 | 布製の服は頭部を保護しないため |
| 装備 | mc_landsknecht_cloth/body_armor | 14 | RBM body_armors の nordic_padded_cloth を参照 |
| 装備 | mc_landsknecht_cloth/leg_armor | 14 | RBM body_armors の nordic_padded_cloth を参照 |
| 装備 | mc_landsknecht_cuirass/head_armor | 20 | 暫定的に従来の knightly_plate と同等の胸甲として設定し、材質は維持 |
| 装備 | mc_landsknecht_cuirass/body_armor | 105 | 暫定的に従来の knightly_plate と同等の胸甲として設定し、材質は維持 |
| 装備 | mc_landsknecht_cuirass/leg_armor | 35 | 暫定的に従来の knightly_plate と同等の胸甲として設定し、材質は維持 |
| 装備 | mc_landsknecht_schuhe/leg_armor | 22 | RBM leg_armors の strapped_shoes を参照 |
| 装備 | mc_landsknecht_doppelsoldner_gloves/arm_armor | 24 | RBM arm_armors の leather_gloves を参照 |
| 装備 | mc_landsknecht_doppelsoldner_cape/head_armor | 15 | 既存の襟部分の防御値を維持 |
| 装備 | mc_landsknecht_doppelsoldner_cape/body_armor | 33 | RBM shoulder_armors の pauldron_with_cape を参照 |
| 装備 | mc_gilded_acanthus_helmet_dragon/head_armor | 130 | 既存の金装アカンサス兜ルールと同じ防御値を使用 |
| 装備 | mc_horse_plate_armor/body_armor | 47 | RBM horse_armors の mail_and_plate_barding を参照 |
| 装備 | mc_horse_plate_armor/head_armor | 90 | RBM horse_armors の mail_and_plate_barding を参照 |
| 装備 | mc_horse_plate_armor/arm_armor | 57 | RBM horse_armors の mail_and_plate_barding を参照 |
| 装備 | mc_horse_plate_armor/leg_armor | 47 | RBM horse_armors の mail_and_plate_barding を参照 |
| 装備 | mc_horse_plate_armor_light/body_armor | 47 | RBM horse_armors の half_mail_and_plate_barding を参照 |
| 装備 | mc_horse_plate_armor_light/head_armor | 90 | RBM horse_armors の half_mail_and_plate_barding を参照 |
| 装備 | mc_horse_plate_armor_light/arm_armor | 57 | RBM horse_armors の half_mail_and_plate_barding を参照 |
| 装備 | mc_horse_plate_armor_light/leg_armor | 5 | RBM horse_armors の half_mail_and_plate_barding を参照 |
| 装備 | maximilian_boucheshield/body_armor | 6 | RBM shields の heavy_heater_shield_shoulder を参照（補強された木製の盾） |
| 装備 | maximilian_boucheshield/hit_points | 710 | RBM shields の heavy_heater_shield_shoulder を参照 |
| パーツ | light_jousting_point/Thrust | 1.30 | 従来のパッチの同種ランス穂先 maximilian_jousting_lance_blade を参照 |
| パーツ | maximilian_rondel_blade/Thrust | 1.00 | RBM sword_blades の dagger_blade_6 を参照（刺突用短剣） |
| パーツ | maximilian_rondel_blade/Swing | 0.90 | RBM sword_blades の dagger_blade_6 を参照（刺突用短剣） |
| パーツ | gilded_crescent_blade/Thrust | 1.00 | RBM sword_blades の battania_blade_5 を参照 |
| パーツ | gilded_crescent_blade/Swing | 1.20 | RBM sword_blades の battania_blade_5 を参照 |
| パーツ | side_blade/Thrust | 1.05 | 従来のパッチの同等の片手剣刃 conquistador_blade を参照 |
| パーツ | side_blade/Swing | 1.00 | 従来のパッチの同等の片手剣刃 conquistador_blade を参照 |
| パーツ | decorated_mace_blade/Swing | 1.30 | RBM mace_pieces の mace_head_13 を参照（王侯用メイス） |
| パーツ | gilded_dragon_sword_blade/Thrust | 1.10 | 従来のパッチの両手剣刃 klingenmeister_blade を参照 |
| パーツ | gilded_dragon_sword_blade/Swing | 1.35 | 従来のパッチの両手剣刃 klingenmeister_blade を参照 |

### 維持される動作

既存の RBM 数値ルールは変更せず、旧バージョン向けのルールも削除していません。表に記載していない名称、パーツ構成、動作、材質は変更しません。組み立て式武器は引き続き本体 MOD のパーツを参照するため、CraftedItem 定義を重複して追加する必要はありません。

### 検証結果

tools/verify_patch.ps1 により、装備 44 点、組み立て式武器 14 点、鍛冶パーツ 39 点、中国語翻訳の参照 97 件がすべて検証に合格しました。防御値 72 項目とダメージ係数 23 項目すべてに明示的な互換ルールがあります。無関係なアイテムは変更されず、金装の双頭竜剣に片手用の登録はありません。ゲーム内での検証は未実施です。

</details>
