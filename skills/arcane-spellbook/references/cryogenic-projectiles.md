# Cryogenic projectile reference

Use this reference for ice, frost, phase-change projectiles, atmospheric water collection, and low-temperature material variants. Read it together with `trajectory-spells.md` when the spell launches a condensed projectile.

## Water availability

For moist air, estimate water-vapor density from

$$
\rho_v=\frac{\phi p_{\mathrm{sat}}(T_a)}{R_vT_a},
$$

where $\phi$ is relative humidity, $p_{\mathrm{sat}}$ is saturation vapor pressure, and $R_v\approx461.5\,\mathrm{J}/(\mathrm{kg\,K})$. The maximum recoverable mass from collection volume $V_c$ is $m_v=\epsilon_c\rho_vV_c$, where $\epsilon_c<1$ includes incomplete capture.

At $T_a\approx293\,\mathrm{K}$ and $\phi=0.50$, the NIST Antoine relation gives $p_{\mathrm{sat}}\approx2.3\,\mathrm{kPa}$ and $\rho_v\approx8.6\,\mathrm{g}/\mathrm{m}^3$. This means a several-gram projectile requires sweeping a large volume of air even before capture losses. Treat atmospheric water as an emergency source for fine needles, not the default source for full projectiles.

## Cooling and phase change

Separate physical heat removal $Q$ in joules from the 法力 cost that moves that heat. For liquid water initially above the melting point, a useful first model is

$$
Q_{\mathrm{liq}}=m\left[c_w(T_w-T_m)+L_f+c_i(T_m-T_0)\right].
$$

For water vapor, add condensation before cooling and freezing:

$$
Q_{\mathrm{vap}}=m\left[L_v+c_w(T_a-T_m)+L_f+c_i(T_m-T_0)\right].
$$

Representative values near ordinary pressure are $c_w\approx4.18\,\mathrm{kJ}/(\mathrm{kg\,K})$, $c_i\approx2.1\,\mathrm{kJ}/(\mathrm{kg\,K})$, $L_f\approx334\,\mathrm{kJ}/\mathrm{kg}$, and $L_v\approx2450\,\mathrm{kJ}/\mathrm{kg}$ near room temperature. Use academy calibration coefficients to convert removed heat into 法力 expenditure; do not equate $\mathrm{J}$ and $\mathrm{ae}$. Require a destination or temporary sink for the removed heat.

Water expands on freezing because ordinary ice is less dense than liquid water. A standard working density is $\rho_i\approx917\,\mathrm{kg}/\mathrm{m}^3$ near $273\,\mathrm{K}$. Calculate projectile volume from ice density rather than assuming the source-water volume remains unchanged.

## Shape and material integrity

Ice strength depends strongly on temperature, grain structure, loading rate, inclusions, and flaws. Do not assign one universal strength. Give each prepared profile a measured allowable stress $\sigma_{\mathrm{allow}}$ and integrity score $q_i$ from low-power calibration. Make cloudy seams, trapped bubbles, asymmetric growth, and thermal cracks observable failure cues.

For a rotating body, a conservative stress proxy is

$$
\sigma_{\mathrm{spin}}=C_\sigma\rho_i\omega^2a^2.
$$

Use it only as a screening rule and obtain $C_\sigma$ and the permitted range from profile tests. Rotation can stabilize the orientation of an elongated, slightly imperfect projectile; it does not remove gravity, drag, cross-flow, or melting. Excess rotation amplifies defects and can fracture the projectile.

## Flight and ablation

For high-fidelity preparation, couple motion, drag, temperature, and mass loss:

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

The heat-transfer coefficient, drag coefficient, and melt rate depend on shape and flow and should be measured for each academy profile. Compress this model into range cards giving flight time, speed retention, mass retention, drop correction, cross-flow correction, and integrity margin.

## Advanced atmospheric solids

Air contains abundant nitrogen and oxygen, but atmospheric abundance does not imply cheap solidification. Nitrogen and oxygen require far lower temperatures than water ice and have different phase boundaries. A single cooling threshold does not make a uniform solid-air projectile: nitrogen freezes at a higher temperature than oxygen, while oxygen may still be liquid. Composition separation, heat-sink capacity, phase stability, and material reactivity require a separate advanced course. Treat oxygen-rich condensed material as a restricted oxidizing-material branch, not a routine upgrade to water ice.

## Public references used for authoring

- [NIST Chemistry WebBook: Water](https://webbook.nist.gov/cgi/cbook.cgi?ID=C7732185), phase-change data and Antoine vapor-pressure coefficients.
- [NASA Glenn Research Center: The Drag Equation](https://www.grc.nasa.gov/www/k-12/VirtualAero/BottleRocket/airplane/drageq.html), dependence of drag on density, speed, reference area, and shape-dependent $C_D$.
- [IAPWS: Revised Release on the Equation of State 2006 for H2O Ice Ih](https://iapws.org/public/documents/U4nW5/Ice-Rev2009.pdf), standard ice-property formulation.

Keep these sources in the authoring layer. In spell chapters, present the resulting academy law, profile card, measurement, and field decision directly.
