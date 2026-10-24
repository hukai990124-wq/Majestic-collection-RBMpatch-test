# RBM Balance Updates — 2026-10-25

点击语言标题展开或收起。 / Click a language to expand or collapse. / 言語名をクリックして開閉してください。

<details>
<summary><strong>简体中文</strong></summary>

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
