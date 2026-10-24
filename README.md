# Majestic Collection — RBM 兼容补丁

[简体中文](README.md) | [English](README.en.md) | [日本語](README.ja.md)

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