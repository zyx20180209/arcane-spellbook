# Arcane Spellbook

一套以数学、物理、控制理论和训练方法构建的世界内法术教材。

本项目把法术视为可以学习、计算、练习和考核的技术。每个法术章节会说明术式构造、学院定律、法力预算、完整模型、临场算法、施法动作、反馈与中止、习题以及掌握标准。正文面向法术学徒和法师书写，不采用小说叙事或设定解说口吻。

## 当前法术

| 法术 | 核心模型 | 文件 |
|---|---|---|
| 火球术 | 受约束热核、法力分配、效果半径与投送 | [fireball.md](spells/fireball/fireball.md) |
| 法师之手 | 持续接触场、摩擦、压力、力矩与反馈控制 | [mage-hand.md](spells/mage-hand/mage-hand.md) |
| 冰锥术 | 水料、相变移热、塑形、旋转稳定与弹道损耗 | [ice-spike.md](spells/ice-spike/ice-spike.md) |

## 项目约定

- 法力是所有术式唯一的能量来源，以学院单位 $\mathrm{ae}$ 计。
- 距离、时间、温度、质量、力和压力等普通量使用 SI 单位。
- 数学公式使用标准 LaTeX：行内公式写作 `$...$`，独立公式写作 `$$...$$`。
- 完整法术应包含理论模型、临场算法、身体接口、反馈、中止、训练、习题和可观察的认证标准。
- 热、冲量、约束、运动和共鸣是法力的转化通道、术式状态或消耗项目，不作为并列能源。

## 目录结构

```text
arcane-spellbook/
├── spells/                         # 法术正文
│   ├── fireball/
│   ├── ice-spike/
│   └── mage-hand/
└── skills/arcane-spellbook/        # 内容生成规范与知识索引
    ├── SKILL.md
    ├── agents/
    ├── references/
    └── scripts/
```

## 校验

使用仓库自带的 Ruby 脚本检查 UTF-8、LaTeX 分隔符、Markdown 标题、章节编号和禁用术语：

```bash
ruby skills/arcane-spellbook/scripts/validate_spell.rb \
  spells/fireball/fireball.md \
  spells/mage-hand/mage-hand.md \
  spells/ice-spike/ice-spike.md
```

校验脚本不依赖第三方 Ruby gem。

## 内容生成 Skill

`skills/arcane-spellbook` 保存了本项目的生成规范，包括：

- 法力架构与术语规则；
- 投射、天体下降、目标锁定和低温弹体等知识索引；
- 法术章节结构与教材行文规范；
- 训练、习题和认证标准；
- 法术文件自动校验脚本。

## 许可

本仓库采用双许可证：

- `spells/` 下的法术正文及 `skills/arcane-spellbook/references/` 下的教材性内容采用 [CC BY-NC-SA 4.0](LICENSE-CONTENT.md)。
- `skills/arcane-spellbook/scripts/` 下的代码采用 [MIT License](LICENSE-CODE.md)。

其他文件默认按其主要性质适用上述许可证；无法判断时，以 CC BY-NC-SA 4.0 为准。
