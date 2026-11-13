# Majestic Collection — RBM 互換パッチ

[简体中文](README.md) | [English](README.en.md) | [日本語](README.ja.md)

2026-11-14 更新。パッチのバージョンは v1.3.8 です。紐なしのゴシック伯爵プレート胸甲、羽根付き金装アカンサス兜、金装ルツェルン鎚の RBM 互換設定を追加しました。前々版と前版ではゴシック・プレート（原色と伯爵版の一式）とテルシオ・カバセット兜に対応しています。RBM v4.5.4 / Bannerlord v1.4.8 の公式 XML データを参考にしています。開発環境には RBM がインストールされていません。XML/XSLT の変換検証は完了していますが、ゲーム内でのバランス検証は未実施です。

## インストールとロード順

MajesticCollection と MajesticCollection_RBM_Patch を、ゲームの Modules フォルダー内に並べて配置してください。

有効にする順序は RBM → MajesticCollection → MajesticCollection_RBM_Patch です。パッチは RBM と本体 MOD の両方より後に読み込む必要があります。RBM を使用しない場合は、MajesticCollection のみを有効にしてください。

## 今回の更新内容

- 紐なしのゴシック伯爵プレート胸甲 mc_gothic_plate_blackend_norope（頭・胴・脚）に対応する 3 件のルールを追加しました。元の値 15/65/20・20 kg は紐付き版と完全に一致するため、30/120/45 をそのまま適用しています。
- 羽根付き金装アカンサス兜 mc_gilded_acanthus_helmet_pluma に対応する 1 件のルールを追加しました。元の値 60・4 kg・プレートは原版および金龍版と完全に一致するため、同じ 130 を適用しています。
- 金装ルツェルン鎚の打撃（lucernehammerg_point）に対応するダメージルールを 1 件追加しました。値は 1.35 で、原版ルツェルン鎚と同じ帯です。
- ゴシック伯爵プレート一式に対応する 7 件のルールを追加しました：mc_gothic_plate_blackend（頭・胴・脚）、mc_gothic_sallet_helmet_blackend、mc_gothic_pauldron_blackend、mc_gothic_gauntlets_blackend、mc_gothic_boots_blackend。各アイテムの元の値・重量・材質は原色版と完全に一致するため、原色版の目標値をそのまま適用しています。
- ルツェルン鎚の打撃（lucernehammer_point）に対応するダメージルールを 1 件追加しました。値は 1.35（両手用の帯、klingenmeister_blade を参照）。
- ゴシック・プレート一式に対応する 7 件のルールを追加しました：mc_gothic_plate（頭・胴・脚）、mc_gothic_sallet_helmet、mc_gothic_pauldron、mc_gothic_gauntlets、mc_gothic_boots。
- テルシオ・カバセット兜 mc_tercio_cabasset_helmet に対応する 1 件のルールを追加しました。
- 長槍兵の肩甲 mc_terciopikeman_pauldron、長槍 terciopike_point、貴族佩剣 tercionoblerapier_blade に対応する 4 件のルールを追加しました。
- 新規追加されたバーゴネット兜 mc_tercio_burgonet とテルシオ・レイピア terciorapier_blade に対応する 3 件のルールを追加しました。
- 新規追加された長槍兵の籠手 mc_terciopikeman_gloves に対応する 1 件のルールを追加しました。
- 分割された mc_tercioelite_helmet_b と新規追加の mc_terciopikeman_shoes に対応する 2 件のルールを追加しました。
- テルシオ（Tercio）シリーズ 6 点（エリート兜・エリート胸甲・エリート肩甲・エリートブーツ・エリート籠手・長槍兵胸甲）を対象に、10 件のルールを追加しました。
- 目標値はすべて、本体 MOD 側の防御値が完全に一致する既存ルールを踏襲しており、新たなバランス判断は行っていません。
- 本体 MOD から削除されたアイテムを対象としていた旧ルール 14 件（旧 knightly シリーズ、gold_maxmilian シリーズ、改名前の旧 ID 2 件）を削除しました。孤立したルールは残っていません。
- 本体 MOD の装備 68 点、組み立て式武器 19 点、鍛冶パーツ 53 点を対象とし、防御値 106 項目・ダメージ係数 30 項目に対応しています。未対応・部分対応はありません。
- 名称 140 件すべてが本体 MOD の中国語翻訳を継承しています。金装の双頭竜剣は両手専用のままです。
- 本バージョンより、本パッチは **MIT ライセンス** で公開されます。詳細は [LICENSE](LICENSE) を参照してください。

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

## ライセンス

本パッチは **MIT ライセンス** で公開されています。全文は [LICENSE](LICENSE) を参照してください。著作権表示を保持する限り、商用を含めて自由に使用・改変・再配布できます。

本パッチには RBM および MajesticCollection のファイルは含まれていません。ロード時にそれらが提供するデータを変換するのみです。RBM と MajesticCollection は、それぞれの作者の条件に従います。
