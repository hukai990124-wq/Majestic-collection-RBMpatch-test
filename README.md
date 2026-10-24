# Majestic Collection — RBM Compatibility Patch

点击语言标题展开或收起。 / Click a language to expand or collapse. / 言語名をクリックして開閉してください。

<details>
<summary><strong>简体中文</strong></summary>

2026-10-25 更新，补丁版本 v1.2.0。参照 RBM v4.5.4 / Bannerlord v1.4.8 的官方 XML 数据，补齐当前 MajesticCollection 的装备及武器适配。本机未安装 RBM，已完成 XML/XSLT 转换校验，尚未进行游戏内平衡验证。

## 安装和加载顺序

将 MajesticCollection 与 MajesticCollection_RBM_Patch 并列放在游戏的 Modules 文件夹中。

启用顺序：RBM → MajesticCollection → MajesticCollection_RBM_Patch。补丁必须在主模组和 RBM 之后加载。未使用 RBM 时只启用 MajesticCollection。

## 本次补齐

- 覆盖主模组当前 44 件装备、14 把组合武器和 39 个锻造部件。
- 补入剃刀党服装、国土佣仆与双薪剑士装备、龙饰头盔、两套马铠和龙纹缺口竞技盾的缺失适配。
- 补入轻型竞技枪、圆环匕首、镀金新月弯刀、随身剑、华饰锤和双头龙剑的伤害系数适配。
- 新增 44 条字段规则；当前共覆盖 72 个防护字段和 23 个伤害系数。两套马铠补上 RBM 使用的分区防护。
- 保留全部原有适配数值，并保留 14 条旧版物品字段规则，方便兼容较旧的主模组。完整覆盖校验以当前主模组为准。
- 97 个物品和部件名称继续继承主模组的中文翻译；双头龙剑仍仅可双手使用。

所有新增数值、参考部件和取值依据见 [BALANCE_UPDATES.md](BALANCE_UPDATES.md)。新增数值是兼容性平衡目标，不代表已在战斗中验证。

## 工作方式

这是仅含数据的增量补丁，不复制物品定义、模型、贴图或 DLL。两个 XSLT 在加载时分别调整防具与盾牌防护、锻造部件伤害系数；马铠缺少的分区防护属性也在加载时补入。

名称、翻译编号、模型、长度、重量、材质、握持位置、攻击类型、动作模式、商品标记和锻造模板成员保持主模组原样。刀刃以外的握柄、护手、剑首无需新增伤害数据，原有组合武器直接使用转换后的部件。

关闭本补丁即可恢复主模组的原始数值。本补丁不修改主模组文件。

## 验证

在 PowerShell 中运行：

    & './tools/verify_patch.ps1'

可使用 -BaseModule '其他路径/MajesticCollection' 指定主模组。脚本检查所有现有防护与伤害字段是否有规则、XSLT 是否实际应用目标值、中文关联是否完整、双头龙剑是否仅保留双手模式，并检查其他属性和外部模组物品是否保持不变。

如果以后向主模组增加新装备而未添加 RBM 规则，脚本会列出缺失字段并报错。

## 参考来源

RBM 官方源码：[Fellow93/RealisticBattleProject](https://github.com/Fellow93/RealisticBattleProject/tree/7f9069b6e111c7ce124f07545f0edef8202042bf/RBMXML)。

本次固定使用提交 7f9069b6e111c7ce124f07545f0edef8202042bf，其 SubModule.xml 标注 RBM v4.5.4 / Bannerlord v1.4.8。正式使用时仍需核对所安装的游戏和 RBM 版本。

</details>

<details>
<summary><strong>English</strong></summary>

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

</details>

<details>
<summary><strong>日本語</strong></summary>

2026-10-25 更新。パッチのバージョンは v1.2.0 です。RBM v4.5.4 / Bannerlord v1.4.8 の公式 XML データを参考に、現在の MajesticCollection の装備・武器に不足していた互換設定を補完しました。開発環境には RBM がインストールされていません。XML/XSLT の変換検証は完了していますが、ゲーム内でのバランス検証は未実施です。

## インストールとロード順

MajesticCollection と MajesticCollection_RBM_Patch を、ゲームの Modules フォルダー内に並べて配置してください。

有効にする順序は RBM → MajesticCollection → MajesticCollection_RBM_Patch です。パッチは RBM と本体 MOD の両方より後に読み込む必要があります。RBM を使用しない場合は、MajesticCollection のみを有効にしてください。

## 今回の更新内容

- 本体 MOD に現在定義されている装備 44 点、組み立て式武器 14 点、鍛冶パーツ 39 点を対象としています。
- Peaky Blinder の衣服、ランツクネヒトとドッペルゼルドナーの装備、竜飾り付き兜、2 種類の馬鎧、Dragon Boucher 盾の互換設定を補完しました。
- 軽量ジョスティングランス、ロンデルダガー、金装の三日月サーベル、サイドソード、装飾メイス、金装の双頭竜剣のダメージ係数を追加しました。
- 44 件のフィールドルールを追加し、現在は防御値 72 項目とダメージ係数 23 項目に対応しています。2 種類の馬鎧には、RBM が使用する部位別の防御値を追加しました。
- 従来の互換設定値はすべて維持し、旧バージョンの本体 MOD 向けのアイテムフィールドルール 14 件も残しています。網羅性の検証は現在の本体 MOD を基準としています。
- アイテムとパーツの名称 97 件は、引き続き本体 MOD の中国語翻訳を継承します。金装の双頭竜剣は両手専用のままです。

追加した数値、参照アイテム、設定理由は [BALANCE_UPDATES.md](BALANCE_UPDATES.md) を参照してください。これらの数値は互換性のためのバランス調整目標であり、実戦で検証済みの値ではありません。

## 仕組み

このパッチはデータのみを含む差分パッチです。アイテム定義、モデル、テクスチャ、DLL を複製しません。2 つの XSLT がロード時に防具・盾の防御値と鍛冶パーツのダメージ係数を調整します。馬鎧に不足している部位別防御属性もロード時に追加します。

名称、翻訳 ID、モデル、長さ、重量、材質、握り位置、ダメージ種別、使用モード、販売フラグ、鍛冶テンプレートへの登録は、本体 MOD の設定を維持します。グリップ、ガード、ポンメルに刃のダメージデータを追加する必要はありません。既存の組み立て式武器は、変換後のパーツをそのまま使用します。

このパッチを無効にすると、本体 MOD の元の数値に戻ります。本体 MOD のファイルは変更しません。

## 検証

パッチのフォルダーで PowerShell を開き、次を実行してください。

    & './tools/verify_patch.ps1'

-BaseModule '別のパス/MajesticCollection' を指定すると、本体 MOD の場所を変更できます。スクリプトは、既存の防御・ダメージ項目すべてにルールがあること、XSLT が設定値を正しく適用すること、中国語翻訳の参照が解決できること、金装の双頭竜剣が両手専用であることを確認します。また、その他の属性や無関係な MOD のアイテムが変更されていないことも確認します。

今後、本体 MOD に新しい装備を追加した際に対応する RBM ルールがなければ、スクリプトは不足項目を表示してエラーを返します。

## 参照元

RBM 公式ソース：[Fellow93/RealisticBattleProject](https://github.com/Fellow93/RealisticBattleProject/tree/7f9069b6e111c7ce124f07545f0edef8202042bf/RBMXML)。

今回の参照元はコミット 7f9069b6e111c7ce124f07545f0edef8202042bf に固定しています。その SubModule.xml には RBM v4.5.4 / Bannerlord v1.4.8 と記載されています。使用前に、インストール済みのゲームと RBM のバージョンを確認してください。

</details>
