# 奥术法术书

[English](README.en.md) | **简体中文**

本书收录学院通行术式的理论、标定方法、临场算法与训练标准，供法术学徒、执业法师及教员查阅。

法术是一门需要计算、动作与判断共同参与的技术。学生应当知道法力去了哪里，某个近似为何成立，何时可以提交术式，以及在观测不足时如何中止。只会复述咒式而不能解释误差来源者，不视为掌握该术。

> 学院开放教材，现世访客亦可阅览。未完成相应安全认证者，请勿在宿舍、实验室或其他承重结构附近自行验证章节结论。

## 现行术式

| 法术 | 主要课题 | 教材 |
|---|---|---|
| 火球术 | 受约束热核、法力分配、效果半径与投送 | [火球术](spells/fireball/fireball.md) |
| 法师之手 | 持续接触场、摩擦、压力、力矩与反馈控制 | [法师之手](spells/mage-hand/mage-hand.md) |
| 冰锥术 | 水料、相变移热、塑形、旋转稳定与弹道损耗 | [冰锥术](spells/ice-spike/ice-spike.md) |
| 陨石术 | 既有天体改向、再入存续、牵引极限与术因脱离 | [陨石术](spells/meteor/meteor.md) |

## 学院计量约定

- 法力是所有术式唯一的能量来源，以学院单位 $\mathrm{ae}$ 计。
- 距离、时间、温度、质量、力和压力等普通量使用 SI 单位。
- 数学公式采用标准 LaTeX：行内公式写作 `$...$`，独立公式写作 `$$...$$`。
- 热、冲量、约束、运动和共鸣属于法力的转化通道、术式状态或消耗项目，不列为独立能源。
- 完整术式课程须包含理论模型、临场算法、身体接口、反馈、中止、训练、习题与可观察的认证标准。

## 馆藏结构

```text
arcane-spellbook/
├── spells/                         # 现行法术教材
│   ├── fireball/
│   ├── ice-spike/
│   ├── mage-hand/
│   └── meteor/
└── skills/arcane-spellbook/        # 编写规范、学科索引与校验工具
    ├── SKILL.md
    ├── agents/
    ├── references/
    └── scripts/
```

## 编务校验

修订术式后，使用馆藏校验脚本检查 UTF-8、LaTeX 分隔符、Markdown 标题、章节编号与废止术语：

```bash
ruby skills/arcane-spellbook/scripts/validate_spell.rb \
  spells/fireball/fireball.md \
  spells/mage-hand/mage-hand.md \
  spells/ice-spike/ice-spike.md \
  spells/meteor/meteor.md
```

脚本使用标准 Ruby 环境，不需要第三方 gem。

`skills/arcane-spellbook` 是教员与编务人员使用的成书规范，收录法力架构、术语规则、学科索引、章节体例、训练考核方法和自动校验工具。新术式通过完整审查后，方可列入“现行术式”。

## 译本编务

简体中文卷为当前校订中的正本。英文卷使用独立入口 [README.en.md](README.en.md)；后续英文法术收入 `spells-en/`，英文编写规范收入 `skills/arcane-spellbook-en/`。

各语言卷共享术式模型、符号和认证结论，但正文分别按本语言的教材习惯编写。译本须保持数值、单位、公式、假设、有效范围和中止条件一致，不作逐句机械转写。未完成技术复核的译稿不得标为现行教材。

## 誊录与传阅

本馆藏采用双重许可：

- `spells/`、后续的 `spells-en/` 及各语言 Skill 的教材性参考内容采用 [CC BY-NC-SA 4.0](LICENSE-CONTENT.md)。
- `skills/arcane-spellbook/scripts/` 中的校验程序采用 [MIT License](LICENSE-CODE.md)。

其他文件依其主要性质适用上述许可；无法判断时，以 CC BY-NC-SA 4.0 为准。
