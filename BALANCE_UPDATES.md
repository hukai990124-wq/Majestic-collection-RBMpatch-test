# RBM Balance Updates

最新更新 / Latest / 最新：2026-11-11

点击语言标题展开或收起。 / Click a language to expand or collapse. / 言語名をクリックして開閉してください。

<details>
<summary><strong>简体中文</strong></summary>

## RBM 补齐记录：2026-11-11

本次新增 1 条规则，对应主模组新加入的大方阵卡巴塞头盔。

| 类别 | 物品/字段 | 新目标值 | 参考与依据 |
| --- | --- | --- | --- |
| 装备 | mc_tercio_cabasset_helmet/head_armor | 120 | 板甲头盔，原始头部防护 55、重量 4；与 mc_tercioelite_helmet、mc_tercioelite_helmet_b、mc_royal_conqueror_helmet 的原始值完全一致，沿用它们的 120 档 |

### 校验结果

`rbm_compat_items.xslt` 规则共 88 条、`rbm_compat_pieces.xslt` 共 28 条，全部唯一、数值合法。主模组 56 件装备、17 把组合武器、49 个锻造部件 100% 覆盖，无遗漏项、无部分覆盖项、无孤儿规则。主模组 122 个名称均已有中文翻译，`verify_patch.ps1` 全项通过。

---

## RBM 补齐记录：2026-11-10

本次新增 4 条规则，对应主模组 11-07 加入的长矛兵肩甲、大方阵长矛与大方阵贵族佩剑。

| 类别 | 物品/字段 | 新目标值 | 参考与依据 |
| --- | --- | --- | --- |
| 装备 | mc_terciopikeman_pauldron/body_armor | 30 | 单片肩甲（主片 + 短 turner），原始身体防护 18；比 mc_landsknecht_doppelsoldner_cape（20 → 33）略低一档 |
| 武器 | terciopike_point/Thrust | 1.30 | 步兵长矛，仅刺击；沿用三条骑枪矛头的目标值。主模组原始值由 2.974377 上调至 3.1 |
| 武器 | tercionoblerapier_blade/Thrust | 1.05 | 原始 5.5，与 conquistador_blade、terciorapier_blade 完全一致 |
| 武器 | tercionoblerapier_blade/Swing | 1.00 | 原始 5.1，同上 |

### 主模组侧配套修正

同日主模组将 `mc_terciopikeman_pauldron` 的重量由 `5` 调整为 `2.5`：该肩甲只有板金主片与一片短 turner，净重应落在同套胸甲之下。调整后长矛兵全套与大方阵精英全套的负重差由 1.7 kg 拉开到 4.2 kg，与两者 24 点的防护差相称。防御值本身未动（原始 `body_armor` 仍为 18），本补丁目标值 `30` 的依据不变，规则条数也不变。

另需说明：本文件早前条目提到的 `mc_terciopikeman_shoes` 重量 `3`、`mc_terciopikeman_gloves` 重量 `1.5` 是主模组当时的数值，现在均已修正为 `0.3` 与 `0.3`，材质仍分别为布与皮革，本补丁对应规则不受影响。

### 校验结果

`rbm_compat_items.xslt` 规则共 87 条、`rbm_compat_pieces.xslt` 共 28 条，全部唯一、数值合法。主模组 55 件装备、17 把组合武器、49 个锻造部件 100% 覆盖，无遗漏项、无部分覆盖项、无孤儿规则。主模组 121 个名称均已有中文翻译，`verify_patch.ps1` 全项通过。

---

## RBM 补齐记录：2026-11-05

本次新增 3 条规则，对应主模组新加入的勃艮第头盔与大方阵刺剑。

| 类别 | 物品/字段 | 新目标值 | 参考与依据 |
| --- | --- | --- | --- |
| 装备 | mc_tercio_burgonet/head_armor | 120 | 板甲头盔，原始头部防护 58；与 mc_landsknecht_doppelsoldner_helmet 同值，沿用其目标值 |
| 武器 | terciorapier_blade/Thrust | 1.05 | 原始 5.5，与 conquistador_blade 完全一致，沿用其目标值 |
| 武器 | terciorapier_blade/Swing | 1.00 | 原始 5.1，与 conquistador_blade 完全一致，沿用其目标值 |

### 校验结果

`rbm_compat_items.xslt` 规则共 86 条、`rbm_compat_pieces.xslt` 共 25 条，全部唯一、数值合法。主模组 54 件装备、15 把组合武器、43 个锻造部件 100% 覆盖，无遗漏项、无部分覆盖项、无孤儿规则。

---

## RBM 补齐记录：2026-11-02

本次新增 1 条规则，对应主模组新增的长矛兵手套。

| 类别 | 物品/字段 | 新目标值 | 参考与依据 |
| --- | --- | --- | --- |
| 装备 | mc_terciopikeman_gloves/arm_armor | 24 | 材质为皮革，原始手臂防护 18；沿用皮革手套档位，与 mc_peaky_gloves、mc_doppelsoldner_gloves 同值 |

### 说明

主模组把 `mc_terciopikeman_gloves` 标为 `material_type="Leather"`，但重量写的是 1.5，与同类皮革手套（`mc_peaky_gloves` 0.3、`mc_doppelsoldner_gloves` 0.3）相差五倍，应为沿用板甲手套模板所致。本补丁按实际材质（皮革）取档；重量属主模组问题，不在本补丁范围内。

### 校验结果

`rbm_compat_items.xslt` 规则共 85 条，全部唯一、数值合法。主模组 53 件装备 100% 覆盖，无遗漏项、无部分覆盖项、无孤儿规则。

主模组仍缺 4 条中文词条：`MCTercioEliteHelmetB`、`MCTercioPikemanCuirass`、`MCTercioPikemanGloves`、`MCTercioPikemanShoes`。属主模组问题，不在本补丁修改范围内。

---

## RBM 补齐记录：2026-10-31

本次新增 2 条规则并调整 2 条既有规则，对应主模组的三处变动：拆分重复 id 后的第二顶西班牙方阵头盔、新增的长矛兵战靴，以及两双靴子材质标注的修正。

| 类别 | 物品/字段 | 新目标值 | 参考与依据 |
| --- | --- | --- | --- |
| 装备 | mc_tercioelite_helmet_b/head_armor | 120 | 主模组把原先重复的 mc_tercioelite_helmet 拆为两个 id；原始头部防护同为 55，沿用同档目标值 |
| 装备 | mc_terciopikeman_shoes/leg_armor | 20 | 美术为布鞋；原始护甲值 25 与 mc_doppelsoldner_shoes 相同，沿用其鞋子档位 |
| 装备 | mc_tercioelite_boots/leg_armor | 20 | 美术为皮靴（此前按板甲靴取了 46）；改按皮革档位，与 mc_doppelsoldner_shoes 同值 |
| 装备 | mc_doppelsoldner_shoes/leg_armor | 46 | 主模组已改为板甲护胫外观（material_type 由 Leather 改为 Plate，重量 0.4 → 3）；原始防护值 25 与 mc_royal_conqueror_boots 相同，沿用其板甲靴档位 |
| 装备 | mc_royal_conqueror_fleece/body_armor | 25 | 此前按纯装饰件给 1；现按主模组原始防护值 25 取值，与其他肩甲的防护值一致 |

### 说明

`mc_tercioelite_helmet` 的重复 id 问题已在主模组修复（拆为 `mc_tercioelite_helmet` 与 `mc_tercioelite_helmet_b`）。此前一条规则同时作用于两顶头盔的情况不再存在，两者各自独立计值。

`mc_terciopikeman_shoes` 在主模组中被标为 `modifier_group="plate"`、`material_type="Plate"`、`weight="3"`，但其美术为布鞋，重量也与真实布鞋不符（`mc_landsknecht_schuhe` 为 0.2，`mc_peaky_shoes` 为 0.8）。本补丁按其实际材质（布鞋）取档；主模组若修正材质与重量属性，此规则的目标值无需改动。

`mc_tercioelite_boots` 同样是皮革靴美术，主模组却按板甲靴标注。其防护值由 46 下调为 20，与皮革档一致。

`mc_doppelsoldner_shoes` 在主模组中已改为板甲护胫外观（`material_type` 由 Leather 改为 Plate，重量由 0.4 提至 3），本补丁相应把它从皮革档 20 上调为板甲档 46。至此鞋类分档为：皮革与布料 19~22（peaky / terciopikeman / tercioelite / landsknecht），板甲 46~55（royal_conqueror / doppelsoldner / vaegir_captain / maximilian_heavy / sol）。

`mc_royal_conqueror_fleece` 此前按纯装饰件处理（RBM 给 1）。现改按主模组原始防护值 25 生效，与其他肩甲一致。其材质与重量仍沿用主模组设定。

`mc_landsknecht_cuirass` 在主模组中已由布料改为板甲（`modifier_group` cloth → plate，`material_type` Cloth → Plate，重量 1.0 → 20）。本补丁原有的 105 档位本就按板甲胸甲设定，因此目标值不变，此前「按板甲档位暂定、原材质不变」的过渡状态已结束。

### 校验结果

`rbm_compat_items.xslt` 规则共 84 条，全部唯一、数值合法。主模组 52 件装备 100% 覆盖，无遗漏项、无部分覆盖项、无孤儿规则。

主模组仍缺 3 条中文词条：`MCTercioEliteHelmetB`、`MCTercioPikemanCuirass`、`MCTercioPikemanShoes`。属主模组问题，不在本补丁修改范围内。

---

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

## RBM compatibility additions: 2026-11-11

One new rule covers the Tercio cabasset helmet added to the base module.

| Kind | Item / field | Target | Reference and rationale |
| --- | --- | --- | --- |
| items | mc_tercio_cabasset_helmet/head_armor | 120 | Plate helmet, base head 55 at weight 4; identical base value to mc_tercioelite_helmet, mc_tercioelite_helmet_b and mc_royal_conqueror_helmet, so it takes their 120 tier |

### Verification results

`rbm_compat_items.xslt` now holds 88 rules and `rbm_compat_pieces.xslt` 28, all unique and numerically valid. Coverage is 100% for 56 items, 17 crafted weapons and 49 crafting pieces, with no gaps or orphans. All 122 base-module names now have Chinese translations, and `verify_patch.ps1` passes every check.

---

## RBM compatibility additions: 2026-11-10

Four new rules cover the pikeman pauldron, the Tercio pike and the Tercio noble rapier added to the base module on 2026-11-07.

| Kind | Item / field | Target | Reference and rationale |
| --- | --- | --- | --- |
| items | mc_terciopikeman_pauldron/body_armor | 30 | Single-plate cop with a short turner, base 18; docked one step below mc_landsknecht_doppelsoldner_cape (20 -> 33) |
| weapons | terciopike_point/Thrust | 1.30 | Infantry thrust-only head; follows the tier used by the three jousting points. Base value raised from 2.974377 to 3.1 in the base module |
| weapons | tercionoblerapier_blade/Thrust | 1.05 | Base 5.5, identical to conquistador_blade and terciorapier_blade |
| weapons | tercionoblerapier_blade/Swing | 1.00 | Base 5.1, as above |

### Base-module adjustments made alongside

On the same day the base module lowered `mc_terciopikeman_pauldron` from `5` to `2.5` in weight: the piece is a single plate cop plus one short turner, so its net weight belongs below the cuirass of the same set. The gap between the full pikeman kit and the Tercio elite kit widens from 1.7 kg to 4.2 kg, which matches the 24-point armour difference between them. The armour values themselves are untouched (base `body_armor` stays at 18), so the `30` target here and the rule count are unchanged.

One clarification: the earlier entries in this file cite `mc_terciopikeman_shoes` at weight `3` and `mc_terciopikeman_gloves` at weight `1.5`. Those were the base-module values at the time; both are now `0.3` (cloth and leather respectively). The rules here are unaffected.

### Verification results

`rbm_compat_items.xslt` now holds 87 rules and `rbm_compat_pieces.xslt` 28, all unique and numerically valid. Coverage is 100% for 55 items, 17 crafted weapons and 49 crafting pieces, with no gaps or orphans. All 121 base-module names now have Chinese translations, and `verify_patch.ps1` passes every check.

---

## RBM compatibility additions: 2026-11-05

This update adds 3 rules for the burgonet helmet and the Tercio rapier newly added to the base module.

| Category | Item / field | New target value | Reference and rationale |
| --- | --- | --- | --- |
| items | mc_tercio_burgonet/head_armor | 120 | Plate helmet, base head protection 58; identical to mc_landsknecht_doppelsoldner_helmet, so it takes that target |
| weapons | terciorapier_blade/Thrust | 1.05 | Base 5.5, identical to conquistador_blade, so it takes that target |
| weapons | terciorapier_blade/Swing | 1.00 | Base 5.1, identical to conquistador_blade, so it takes that target |

### Verification results

`rbm_compat_items.xslt` holds 86 rules and `rbm_compat_pieces.xslt` 25, all unique and numerically valid. Coverage is 100% across 54 items, 15 crafted weapons and 43 crafting pieces, with no gaps, no partial coverage and no orphan rules.

---

## RBM compatibility additions: 2026-11-02

This update adds 1 rule for the pikeman gloves newly added to the base module.

| Category | Item / field | New target value | Reference and rationale |
| --- | --- | --- | --- |
| items | mc_terciopikeman_gloves/arm_armor | 24 | Leather material, base arm protection 18; follows the leather glove tier, same target as mc_peaky_gloves and mc_doppelsoldner_gloves |

### Notes

The base module labels `mc_terciopikeman_gloves` as `material_type="Leather"` but gives it a weight of 1.5, five times the other leather gloves (`mc_peaky_gloves` 0.3, `mc_doppelsoldner_gloves` 0.3) - most likely copied from the plate gauntlet template. This patch follows the actual material; the weight is a base-module issue outside this patch's scope.

### Verification results

`rbm_compat_items.xslt` now holds 85 rules, all unique and numerically valid. Protection fields for all 53 base-module items are covered 100%, with no gaps, no partial coverage and no orphan rules.

The base module is still missing 4 Chinese strings: `MCTercioEliteHelmetB`, `MCTercioPikemanCuirass`, `MCTercioPikemanGloves`, `MCTercioPikemanShoes`. That is a base-module issue outside this patch's scope.

---

## RBM compatibility additions: 2026-10-31

This update adds 2 rules and adjusts 2 existing ones, following three base-module changes: the second Tercio helmet after the duplicated id was split, a newly added pikeman shoe, and corrected material labels on two pairs of boots.

| Category | Item / field | New target value | Reference and rationale |
| --- | --- | --- | --- |
| items | mc_tercioelite_helmet_b/head_armor | 120 | The base module split the previously duplicated mc_tercioelite_helmet id into two; base head protection is 55 in both, so the same target applies |
| items | mc_terciopikeman_shoes/leg_armor | 20 | The artwork is a cloth shoe; its base value 25 matches mc_doppelsoldner_shoes, so it follows that shoe tier |
| items | mc_tercioelite_boots/leg_armor | 20 | The artwork is a leather boot (previously valued as a plate boot at 46); moved to the leather tier |
| items | mc_doppelsoldner_shoes/leg_armor | 46 | The base module now uses plate greaves (material_type Leather -> Plate, weight 0.4 -> 3); base value 25 matches mc_royal_conqueror_boots, so it follows that plate boot tier |
| items | mc_royal_conqueror_fleece/body_armor | 25 | Previously treated as a pure cosmetic piece at 1; now uses the base value of 25, matching the other shoulder pieces |

### Notes

The duplicate `mc_tercioelite_helmet` id has been fixed in the base module (split into `mc_tercioelite_helmet` and `mc_tercioelite_helmet_b`). The previous situation where one rule covered both helmets no longer applies; each is now valued independently.

`mc_terciopikeman_shoes` is labelled `modifier_group="plate"`, `material_type="Plate"` and `weight="3"` in the base module, but its artwork is a cloth shoe and the weight does not match cloth footwear (`mc_landsknecht_schuhe` is 0.2, `mc_peaky_shoes` is 0.8). This patch follows the actual material; if the base module corrects its material and weight attributes, the target value here does not need to change.

### Verification results

`rbm_compat_items.xslt` now holds 84 rules, all unique and numerically valid. Protection fields for all 52 base-module items are covered 100%, with no gaps, no partial coverage and no orphan rules.

The base module is still missing 3 Chinese strings: `MCTercioEliteHelmetB`, `MCTercioPikemanCuirass`, `MCTercioPikemanShoes`. That is a base-module issue outside this patch's scope.

---

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

## RBM 互換設定の補完記録：2026-11-11

本体 MOD に追加されたテルシオ・カバセット兜に対応する 1 件のルールを追加しました。

| 分類 | アイテム / 項目 | 新しい設定値 | 参照元と設定理由 |
| --- | --- | --- | --- |
| 装備 | mc_tercio_cabasset_helmet/head_armor | 120 | 板金の兜。元の値は頭部 55・重量 4 で、mc_tercioelite_helmet、mc_tercioelite_helmet_b、mc_royal_conqueror_helmet と完全に一致するため、同じ 120 の帯を踏襲 |

### 検証結果

`rbm_compat_items.xslt` は 88 件、`rbm_compat_pieces.xslt` は 28 件となり、すべて一意で数値も妥当です。本体 MOD の装備 56 点・組み立て式武器 17 点・鍛冶パーツ 49 点を 100% 網羅し、未対応・孤立ルールはありません。名称 122 件すべてに中国語訳が入り、`verify_patch.ps1` も全項目通過しました。

---

## RBM 互換設定の補完記録：2026-11-10

2026-11-07 に本体 MOD へ追加された長槍兵の肩甲・長槍・貴族佩剣を対象に、4 件のルールを追加しました。

| 分類 | アイテム / 項目 | 新しい設定値 | 参照元と設定理由 |
| --- | --- | --- | --- |
| 装備 | mc_terciopikeman_pauldron/body_armor | 30 | 一枚板の主片と短い turner からなる肩甲。元の値 18 で、mc_landsknecht_doppelsoldner_cape（20 → 33）より一段低く設定 |
| 武器 | terciopike_point/Thrust | 1.30 | 歩兵用の刺撃専用穂先。3 種のジョスティング穂先と同じ帯を踏襲。本体 MOD の元の値は 2.974377 から 3.1 へ引き上げ |
| 武器 | tercionoblerapier_blade/Thrust | 1.05 | 元の値 5.5 は conquistador_blade / terciorapier_blade と完全一致 |
| 武器 | tercionoblerapier_blade/Swing | 1.00 | 元の値 5.1、同上 |

### 本体 MOD 側の同時修正

同日、本体 MOD は `mc_terciopikeman_pauldron` の重量を `5` から `2.5` に変更しました。この肩甲は板金の主片と短い turner ひとつだけで構成されるため、同じ一式の胸甲より軽い帯に収まるべきものです。この調整で、長槍兵の一式とテルシオ精鋭の一式の重量差は 1.7 kg から 4.2 kg に広がり、両者の防御力差 24 点に見合うようになりました。防御値自体は変更していないため（元の `body_armor` は 18 のまま）、本パッチの設定値 `30` の根拠もルール件数も変わりません。

なお、本ファイルの以前の項目にある `mc_terciopikeman_shoes` の重量 `3` と `mc_terciopikeman_gloves` の重量 `1.5` は当時の本体 MOD の値です。現在はいずれも `0.3`（それぞれ布と皮革）に修正済みで、本パッチの該当ルールには影響しません。

### 検証結果

`rbm_compat_items.xslt` は 87 件、`rbm_compat_pieces.xslt` は 28 件となり、すべて一意で数値も妥当です。本体 MOD の装備 55 点・組み立て式武器 17 点・鍛冶パーツ 49 点を 100% 網羅し、未対応・孤立ルールはありません。名称 121 件すべてに中国語訳が入り、`verify_patch.ps1` も全項目通過しました。

---

## RBM 互換設定の補完記録：2026-11-05

本体 MOD に新規追加されたバーゴネット兜とテルシオ・レイピアに対応し、3 件のルールを追加しました。

| 分類 | アイテム / 項目 | 新しい設定値 | 参照元と設定理由 |
| --- | --- | --- | --- |
| 装備 | mc_tercio_burgonet/head_armor | 120 | 板甲の兜、元の頭部防御は 58。mc_landsknecht_doppelsoldner_helmet と同値のため、その目標値を踏襲 |
| 武器 | terciorapier_blade/Thrust | 1.05 | 元の値 5.5 が conquistador_blade と完全に一致するため、その目標値を踏襲 |
| 武器 | terciorapier_blade/Swing | 1.00 | 元の値 5.1 が conquistador_blade と完全に一致するため、その目標値を踏襲 |

### 検証結果

`rbm_compat_items.xslt` は 86 件、`rbm_compat_pieces.xslt` は 25 件のルールを持ち、すべて一意で数値も妥当です。本体 MOD の装備 54 点、組み立て式武器 15 点、鍛冶パーツ 43 点を 100% 網羅しており、未対応・部分対応・孤立ルールはありません。

---

## RBM 互換設定の補完記録：2026-11-02

本体 MOD に新規追加された長槍兵の籠手に対応し、1 件のルールを追加しました。

| 分類 | アイテム / 項目 | 新しい設定値 | 参照元と設定理由 |
| --- | --- | --- | --- |
| 装備 | mc_terciopikeman_gloves/arm_armor | 24 | 材質は革、元の腕部防御は 18。革製籠手の帯を踏襲し、mc_peaky_gloves および mc_doppelsoldner_gloves と同値 |

### 補足

本体 MOD は `mc_terciopikeman_gloves` を `material_type="Leather"` としていますが、重量が 1.5 と、同種の革製籠手（`mc_peaky_gloves` 0.3、`mc_doppelsoldner_gloves` 0.3）の 5 倍になっています。板甲の籠手テンプレートを流用したものと思われます。本パッチは実際の材質（革）に従って設定しており、重量は本体 MOD 側の問題で本パッチの対象外です。

### 検証結果

`rbm_compat_items.xslt` のルールは計 85 件、すべて一意で数値も妥当です。本体 MOD の 53 点すべてについて防御フィールドが 100% 網羅されており、未対応・部分対応・孤立ルールはありません。

本体 MOD には中国語の文字列が 4 件不足しています：`MCTercioEliteHelmetB`、`MCTercioPikemanCuirass`、`MCTercioPikemanGloves`、`MCTercioPikemanShoes`。本体 MOD 側の問題であり、本パッチの対象外です。

---

## RBM 互換設定の補完記録：2026-10-31

本体 MOD の 3 点の変更に対応し、2 件のルールを追加、2 件の既存ルールを調整しました。重複 ID を分割した 2 つ目のテルシオ兜、新規追加された長槍兵の靴、そして 2 組のブーツの材質表記の修正です。

| 分類 | アイテム / 項目 | 新しい設定値 | 参照元と設定理由 |
| --- | --- | --- | --- |
| 装備 | mc_tercioelite_helmet_b/head_armor | 120 | 本体 MOD が重複していた mc_tercioelite_helmet を 2 つに分割。元の頭部防御は双方とも 55 のため同じ目標値を適用 |
| 装備 | mc_terciopikeman_shoes/leg_armor | 20 | 美術は布製の靴。元の値 25 が mc_doppelsoldner_shoes と同値のため、その靴の帯を踏襲 |
| 装備 | mc_tercioelite_boots/leg_armor | 20 | 美術は革製のブーツ（以前は板甲ブーツとして 46 を設定）。革の帯に変更 |
| 装備 | mc_doppelsoldner_shoes/leg_armor | 46 | 本体 MOD が板甲のすね当て外観に変更（material_type を Leather から Plate、重量を 0.4 から 3 へ）。元の値 25 が mc_royal_conqueror_boots と同値のため、その板甲ブーツ帯を踏襲 |
| 装備 | mc_royal_conqueror_fleece/body_armor | 25 | 以前は純粋な装飾品として 1 を設定。今回、本体 MOD の元の防御値 25 を適用し、他の肩甲と揃えました |

### 補足

`mc_tercioelite_helmet` の重複 ID は本体 MOD で修正済みです（`mc_tercioelite_helmet` と `mc_tercioelite_helmet_b` に分割）。1 件のルールが両方の兜に適用される状況は解消され、それぞれ独立して値を設定します。

`mc_terciopikeman_shoes` は本体 MOD で `modifier_group="plate"`、`material_type="Plate"`、`weight="3"` と記載されていますが、美術は布製の靴であり、重量も実際の布靴と一致しません（`mc_landsknecht_schuhe` は 0.2、`mc_peaky_shoes` は 0.4）。本パッチは実際の材質に従って設定しています。本体 MOD 側で材質と重量が修正されても、ここの目標値を変更する必要はありません。

`mc_tercioelite_boots` も同様に革製ブーツの美術でありながら、本体 MOD では板甲ブーツとして記載されています。防御値を 46 から 20 へ変更しました。

`mc_doppelsoldner_shoes` は本体 MOD で板甲のすね当て外観に変更されました（`material_type` を Leather から Plate、重量を 0.4 から 3 へ）。これに伴い、本パッチでも革の帯 20 から板甲の帯 46 へ引き上げました。現在の靴の区分は、革・布が 19~22（peaky / terciopikeman / tercioelite / landsknecht）、板甲が 46~55（royal_conqueror / doppelsoldner / vaegir_captain / maximilian_heavy / sol）です。

`mc_royal_conqueror_fleece` は以前、純粋な装飾品として扱っていました（RBM 値 1）。今回、本体 MOD の元の防御値 25 を適用し、他の肩甲と揃えました。材質と重量は本体 MOD の設定をそのまま使用します。

`mc_landsknecht_cuirass` は本体 MOD で布製から板甲に変更されました（`modifier_group` cloth → plate、`material_type` Cloth → Plate、重量 1.0 → 20）。本パッチの 105 はもともと板甲胸甲として設定していたため、目標値は変更ありません。以前の「板甲の帯で暫定、材質は据え置き」という過渡的な状態は解消されました。

### 検証結果

`rbm_compat_items.xslt` のルールは計 84 件、すべて一意で数値も妥当です。本体 MOD の 52 点すべてについて防御フィールドが 100% 網羅されており、未対応・部分対応・孤立ルールはありません。

本体 MOD には中国語の文字列が 3 件不足しています：`MCTercioEliteHelmetB`、`MCTercioPikemanCuirass`、`MCTercioPikemanShoes`。本体 MOD 側の問題であり、本パッチの対象外です。

---

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
