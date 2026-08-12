# 低温投射物参考

适用于冰、霜冻、相变投射物、空气取水和低温材料变体。法术会发射凝结弹体时，应与 `trajectory-spells.md` 一同阅读。

## 水料可得性

潮湿空气中的水蒸气密度可估算为

$$
\rho_v=\frac{\phi p_{\mathrm{sat}}(T_a)}{R_vT_a},
$$

其中，$\phi$ 为相对湿度，$p_{\mathrm{sat}}$ 为饱和蒸气压，$R_v\approx461.5\,\mathrm{J}/(\mathrm{kg\,K})$。从体积 $V_c$ 中最多可回收的质量为 $m_v=\epsilon_c\rho_vV_c$，其中 $\epsilon_c<1$ 表示捕集不完全。

当 $T_a\approx293\,\mathrm{K}$ 且 $\phi=0.50$ 时，按 NIST 的 Antoine 关系，$p_{\mathrm{sat}}\approx2.3\,\mathrm{kPa}$，$\rho_v\approx8.6\,\mathrm{g}/\mathrm{m}^3$。即使不计捕集损耗，数克弹体也需要扫过很大的空气体积。因此，空气取水只适合作为细针的应急料源，不能作为完整弹体的常规来源。

## 降温与相变

以焦耳计的物理移热量 $Q$ 与执行移热所需的法力必须分开。液态水初温高于熔点时，可使用

$$
Q_{\mathrm{liq}}=m\left[c_w(T_w-T_m)+L_f+c_i(T_m-T_0)\right].
$$

若水料来自水蒸气，还要先计入凝结：

$$
Q_{\mathrm{vap}}=m\left[L_v+c_w(T_a-T_m)+L_f+c_i(T_m-T_0)\right].
$$

常压附近可采用代表值 $c_w\approx4.18\,\mathrm{kJ}/(\mathrm{kg\,K})$、$c_i\approx2.1\,\mathrm{kJ}/(\mathrm{kg\,K})$、$L_f\approx334\,\mathrm{kJ}/\mathrm{kg}$，以及室温附近的 $L_v\approx2450\,\mathrm{kJ}/\mathrm{kg}$。用学院标定系数把移热量换算为法力成本，不得直接令 $\mathrm{J}$ 与 $\mathrm{ae}$ 相等。被移走的热量必须有明确去向或临时热库。

普通冰的密度低于液态水，因此结冰会膨胀。接近 $273\,\mathrm{K}$ 时可采用 $\rho_i\approx917\,\mathrm{kg}/\mathrm{m}^3$。应按冰密度计算弹体体积，不能假定水料体积保持不变。

## 形状与材料完整性

冰的强度强烈依赖温度、晶粒结构、加载速率、夹杂与裂纹，不得设置一个通用强度。每个预制构型都应通过低功率标定得到许用应力 $\sigma_{\mathrm{allow}}$ 和完整性评分 $q_i$。浑浊接缝、气泡、不对称生长和热裂纹应成为可观察的故障征兆。

旋转体可以使用以下保守应力指标：

$$
\sigma_{\mathrm{spin}}=C_\sigma\rho_i\omega^2a^2.
$$

该式只用于筛查；$C_\sigma$ 及其允许范围必须从构型试验获得。旋转可以稳定细长且略有缺陷的弹体姿态，但不能消除重力、阻力、侧向流或融化。转速过高会放大缺陷并导致破裂。

## 飞行与消融

高精度准备可联立运动、阻力、温度和质量损失：

$$
m\frac{\mathrm{d}\boldsymbol{v}}{\mathrm{d}t}
=m\boldsymbol{g}
-\frac{1}{2}\rho_aC_DA_f\lVert\boldsymbol{v}_{\mathrm{rel}}\rVert\boldsymbol{v}_{\mathrm{rel}},
$$

$$
mc_i\frac{\mathrm{d}T}{\mathrm{d}t}
=hA_s(T_a-T)-L_f\dot m_{\mathrm{melt}},
\qquad
\frac{\mathrm{d}m}{\mathrm{d}t}=-\dot m_{\mathrm{melt}}.
$$

传热系数、阻力系数和融化速率取决于形状与流动状态，应逐构型测定。随后把模型压缩成构型卡，列出飞行时间、速度保持率、质量保持率、下坠修正、侧向流修正和完整性余量。

## 高级空气凝固材料

空气中氮和氧含量丰富，但含量丰富不代表易于凝固。氮、氧所需温度远低于水冰，且相界不同。单一降温阈值不能得到均匀的“固态空气”弹体：氮可能已经凝固，而氧仍为液态。成分分离、热库容量、相稳定性和材料反应性需要独立的高级课程。富氧凝结物属于受限的强氧化性材料分支，不是水冰弹体的常规升级。

## 编写参考资料

- [NIST Chemistry WebBook：水](https://webbook.nist.gov/cgi/cbook.cgi?ID=C7732185)，用于相变数据和 Antoine 蒸气压系数。
- [NASA Glenn Research Center：阻力方程](https://www.grc.nasa.gov/www/k-12/VirtualAero/BottleRocket/airplane/drageq.html)，用于说明阻力对密度、速度、参考面积和形状相关系数 $C_D$ 的依赖。
- [IAPWS：H2O 冰 Ih 状态方程修订版](https://iapws.org/public/documents/U4nW5/Ice-Rev2009.pdf)，用于标准冰性质。

这些来源只保留在编写层。法术正文直接呈现由其得到的学院定律、构型卡、测量和临场决策。
