# Foundations of spell engineering

Read this reference for every spell.

## The core model

Represent a spell as a partially observed dynamical system:

`state -> observation -> estimate -> decision -> control -> new state`

Define six sets before writing equations:

| Set | Question | Typical examples |
|---|---|---|
| State | What changes even when not directly visible? | position, velocity, field strength, heat, binding integrity |
| Observation | What can the caster actually sense? | apparent angle, resonance, boundary shimmer, timing pulse |
| Control | What can the caster deliberately alter? | direction, power, phase, curvature, release threshold |
| Disturbance | What is not controlled? | wind, target motion, ambient 法力场 variation, fatigue, interference |
| Constraint | What must never be exceeded? | attention, 法力, temperature, instability, legal boundary |
| Objective | What counts as success? | intercept, containment, identification, duration, precision |

An equation belongs in a chapter only if it changes an observation, decision, control, constraint, or assessment.

## Five phases of expertise

### Offline study

Derive the full model, prove or simulate its behavior, learn why an approximation works, prepare tables or mnemonics, and study known failure regions. This is where advanced mathematics demonstrates intellectual depth without forcing implausible spoken algebra during combat.

### Pre-cast calibration

Measure personal and environmental coefficients: output-to-effort ratio, perceptual bias, response delay, local 法力场 gradient, medium density, and tool alignment. Calibration converts a general formula into this caster's usable model.

### Runtime estimation

Observe only the minimum sufficient inputs, classify the situation, choose a prelearned solver, calculate a coarse solution, and reserve attention for uncertainty. Specify a time budget and a fallback method.

### Feedback correction

Compare predicted cues with observed cues. Apply bounded corrections rather than recomputing everything. Define the cue for under-correction, over-correction, oscillation, and imminent loss of control.

### Post-cast review

Record inputs, prediction, outcome, and residual. Attribute error among observation, model choice, arithmetic, execution, disturbance, and equipment. Training should improve the correct component.

## The caster's calculation stack

Use four levels of solution:

1. **Exact model:** defines the ideal and supports derivation or simulation.
2. **Prepared representation:** tables, fitted coefficients, diagrams, nomograms, or memorized canonical cases.
3. **Field algorithm:** a few arithmetic or geometric operations executable under time pressure.
4. **Reflex rule:** a trained cue-action mapping for emergencies, explicitly less accurate and more conservative.

State the error introduced at every reduction. A talented caster is distinguished by selecting the cheapest level that still meets the tolerance.

## 法力架构

**法力是每个术式唯一的能量来源。** 热、力、运动、共鸣和场完整性描述法力如何储存、转化或消耗；它们不是并列的能量物质。写能量方程前，先判断术式属于哪一种架构：

- **离散术式：** 法力在有限事件中完成构造、携带和释放。使用总法力预算，并明确释放法力与余量。
- **持续术式：** 施法者先支付启动法力，再以持续输入维持状态。使用功率模型 $P(t)$ 和累计消耗 $E(t)=E_{\mathrm{start}}+\int P(t)\,\mathrm{d}t$。
- **混合术式：** 持续结构包含一个或多个离散释放事件。分别记录启动、维持、事件和中止法力。

持续术式必须定义计划时长、当前功率、峰值功率、剩余安全法力，以及安全撤回或消散所需的法力功率。力、场或时间相关的量不能因为最后可以积分，就被写成一次性法力成本。

## 术语锁

- 所有术式只使用“法力”作为能量来源，单位为 $\mathrm{ae}$。
- 热、冲量、压力、约束、运动和共鸣是法力的作用通道、状态变量或消耗项目；需要区分时，在名称中写“热通道”“约束状态”“维持功率”等。
- 不创造“弧能”“元素能”“灵魂能”等第二能源，也不为距离、时间、温度、质量或学派另造单位。
- 读者正文直接使用学院定律和标定参数，不出现“架空”“虚构”“不对应现实”等出戏说明。

## Embodied interface

Map cognition to stable physical technique, as in sport instruction:

- stance establishes the reference frame and prevents uncontrolled recoil or drift;
- gaze and head position define observation geometry;
- hand shape selects parameters or separates simultaneous control channels;
- motion amplitude encodes magnitude and motion direction encodes sign or axis;
- breath supplies timing, rhythm, and an abort gate;
- spoken phrases chunk algorithm stages and provide checksum-like error detection;
- tools externalize memory, measurement, or computation.

For every action, state its function. Avoid ceremonial movements with no modeled effect unless they are explicitly mnemonic or cultural variants.

## Uncertainty and intellectual skill

Treat measurements as estimates, not facts. At minimum specify:

- precision or plausible interval;
- systematic bias versus random noise;
- how errors propagate into the result;
- which observation dominates uncertainty;
- the threshold at which casting should be delayed, degraded, or aborted.

Useful knowledge: dimensional analysis, significant figures, sensitivity analysis, probability distributions, Bayesian updating, interval arithmetic, robust optimization, decision theory, and signal detection theory.

## Model selection checklist

- Can the caster observe every required input?
- Can the caster influence every named control variable?
- Is the runtime method feasible within the stated time?
- Does the approximation have a declared validity range?
- Does environmental variation produce meaningful technique changes?
- Can a trainer diagnose distinct failure causes from visible or sensed evidence?
- Does a novice have a safer, simpler version?
- Is there a clean abort action and a defined post-abort state?
