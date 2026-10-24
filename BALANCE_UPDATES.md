# RBM 补齐记录：2026-10-25

本次新增 44 条规则。下表数值是本补丁的适配目标；标注 Existing patch 的项目沿用旧补丁同类装备的设计，其他项目参照固定提交中的 RBM 官方数据。相似物品映射属于平衡判断，不是原作者为本模组提供的官方配置。

马铠分别参照 mail_and_plate_barding 与 half_mail_and_plate_barding；两者躯干值相同，轻型马铠的后部覆盖较低。head_armor、arm_armor、leg_armor 在主模组缺失时由 XSLT 补入。国土佣仆胸甲按旧补丁骑士胸甲档位暂定，主模组原有材质不改。实际效果需在 RBM 内测试。

官方参考目录：https://github.com/Fellow93/RealisticBattleProject/tree/7f9069b6e111c7ce124f07545f0edef8202042bf/RBMXML

| 类别 | 物品/字段 | 新目标值 | 参考与依据 |
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

## 保留行为

原有 RBM 数值规则未改，旧版本遗留规则未删。所有未列于上表的名称、部件结构、动作和材质均不变。组合武器继续引用主模组部件，无需重复添加 CraftedItem 定义。

## 校验结果

tools/verify_patch.ps1：44 件装备、14 把组合武器、39 个部件、97 个中文关联全部通过。72 个防护字段和 23 个伤害系数均有明确适配规则。外部物品不变，双头龙剑不含单手注册。尚未进行游戏内验证。
