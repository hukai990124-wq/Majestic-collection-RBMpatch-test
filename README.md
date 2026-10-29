# Majestic Collection — RBM Compatibility Patch

点击语言标题展开或收起。 / Click a language to expand or collapse. / 言語名をクリックして開閉してください。

<details>
<summary><strong>简体中文</strong></summary>

2026-10-30 更新，补丁版本 v1.3.0。本次为西班牙方阵（Tercio）系列补充 RBM 适配，并清理指向已删除物品的遗留规则。参照 RBM v4.5.4 / Bannerlord v1.4.8 的官方 XML 数据。本机未安装 RBM，已完成 XML/XSLT 转换校验，尚未进行游戏内平衡验证。

## 安装和加载顺序

将 MajesticCollection 与 MajesticCollection_RBM_Patch 并列放在游戏的 Modules 文件夹中。

启用顺序：RBM → MajesticCollection → MajesticCollection_RBM_Patch。补丁必须在主模组和 RBM 之后加载。未使用 RBM 时只启用 MajesticCollection。

## 本次更新

- 新增 10 条规则，覆盖西班牙方阵（Tercio）系列 6 件装备：精英头盔、精英胸甲、精英肩甲、精英战靴、精英护手与长矛兵胸甲。
- 上述目标值全部沿用本补丁中原始防护值完全相同的既有规则，未引入新的平衡判断。
- 删除 14 条指向已不存在物品的遗留规则，涉及旧 knightly 系列、gold_maxmilian 系列，以及两件改名前后的旧编号。当前已无孤儿规则。
- 覆盖主模组 50 件装备、14 把组合武器和 39 个锻造部件；共 82 个防护字段和 23 个伤害系数，无遗漏项、无部分覆盖项。
- 103 个物品和部件名称中有 102 个继承主模组的中文翻译；长矛兵胸甲的中文名尚未补入主模组语言文件。双头龙剑仍仅可双手使用。

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

Updated on 2026-10-30. Patch version: v1.3.0. This update adds RBM compatibility for the Tercio series and removes legacy rules that pointed at items no longer present in the base mod. Official XML data from RBM v4.5.4 / Bannerlord v1.4.8 is used as a reference. RBM is not installed on the development machine. XML/XSLT transformation checks have passed; gameplay balance has not been tested in game.

## Installation and load order

Place MajesticCollection and MajesticCollection_RBM_Patch side by side in the game's Modules folder.

Enable them in this order: RBM → MajesticCollection → MajesticCollection_RBM_Patch. The patch must load after both RBM and the base mod. If you do not use RBM, enable only MajesticCollection.

## What's included in this update

- Adds 10 rules covering the 6 Tercio series items: elite helmet, elite cuirass, elite shoulders, elite boots, elite gauntlets, and pikeman cuirass.
- Every target value reuses an existing rule whose base-module protection value is identical, so no new balance judgement is introduced.
- Removes 14 legacy rules that pointed at items no longer present in the base mod: the old knightly series, the gold_maxmilian series, and two ids that have since been renamed. No orphan rules remain.
- Covers the base mod's 50 equipment items, 14 crafted weapons, and 39 crafting pieces; 82 protection fields and 23 damage factors, with no gaps and no partial coverage.
- 102 of 103 item and piece names inherit the base mod's Chinese translations; the pikeman cuirass has no Chinese string in the base module yet. The gilded dragon sword remains two-handed only.

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

2026-10-30 更新。パッチのバージョンは v1.3.0 です。テルシオ（Tercio）シリーズの RBM 互換設定を追加し、本体 MOD から削除されたアイテムを対象としていた旧ルールを整理しました。RBM v4.5.4 / Bannerlord v1.4.8 の公式 XML データを参考にしています。開発環境には RBM がインストールされていません。XML/XSLT の変換検証は完了していますが、ゲーム内でのバランス検証は未実施です。

## インストールとロード順

MajesticCollection と MajesticCollection_RBM_Patch を、ゲームの Modules フォルダー内に並べて配置してください。

有効にする順序は RBM → MajesticCollection → MajesticCollection_RBM_Patch です。パッチは RBM と本体 MOD の両方より後に読み込む必要があります。RBM を使用しない場合は、MajesticCollection のみを有効にしてください。

## 今回の更新内容

- テルシオ（Tercio）シリーズ 6 点（エリート兜・エリート胸甲・エリート肩甲・エリートブーツ・エリート籠手・長槍兵胸甲）を対象に、10 件のルールを追加しました。
- 目標値はすべて、本体 MOD 側の防御値が完全に一致する既存ルールを踏襲しており、新たなバランス判断は行っていません。
- 本体 MOD から削除されたアイテムを対象としていた旧ルール 14 件（旧 knightly シリーズ、gold_maxmilian シリーズ、改名前の旧 ID 2 件）を削除しました。孤立したルールは残っていません。
- 本体 MOD の装備 50 点、組み立て式武器 14 点、鍛冶パーツ 39 点を対象とし、防御値 82 項目・ダメージ係数 23 項目に対応しています。未対応・部分対応はありません。
- 名称 103 件のうち 102 件は本体 MOD の中国語翻訳を継承しています。長槍兵胸甲の中国語名は本体 MOD の言語ファイルに未登録です。金装の双頭竜剣は両手専用のままです。

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
