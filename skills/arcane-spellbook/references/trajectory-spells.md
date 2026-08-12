# Trajectory and area-placement spells

Use for fireballs, ice projectiles, arcing bolts, indirect bombardment, beam leading, thrown barriers, and effects placed at an unbound point in space.

## Knowledge index

| Problem | Study areas | Spellbook use |
|---|---|---|
| Describe motion | vectors, coordinate systems, kinematics, ordinary differential equations | position and velocity state |
| Estimate range and angle | trigonometry, similar triangles, angular size, parallax | convert perception into distance |
| Lead a moving target | relative motion, root finding, intercept geometry | solve where and when paths meet |
| Account for medium | drag models, fluid mechanics, numerical integration | wind, air, water, magical resistance |
| Shape a curved path | constrained optimization, splines, calculus of variations | route around obstacles or limit curvature |
| Correct in flight | feedback control, proportional control, model-predictive control | bounded steering without oscillation |
| Track observations | alpha-beta filters, Kalman-filter concepts, data association | infer motion from noisy sightings |
| Quantify miss risk | covariance, error ellipses, Monte Carlo concepts, sensitivity analysis | choose radius, power, or abort threshold |
| Place an area effect | geometry, convolution, optimization, coverage problems | maximize effect while respecting exclusions |

Recommended study sequence: vectors and units; constant-acceleration motion; relative motion; estimation error; drag and numerical approximation; feedback control; probabilistic placement.

## Runtime decomposition

Separate the casting problem into:

1. establish a local frame from stance and gaze;
2. estimate range and relative motion;
3. select a projectile profile with known speed and persistence;
4. select direct, high-arc, guided, or area-placement solver;
5. compute time-to-effect and aim offset;
6. apply first-order environmental correction;
7. commit, observe deviation, and correct or abort.

Do not let the caster solve a general differential equation mentally. Derive it offline, then provide canonical profiles, fitted rules, or a geometric construction.

## Useful field-algorithm patterns

### Canonical-case interpolation

Memorize solutions at several ranges or elevations. Locate the present case between two entries and interpolate. Teach when interpolation ceases to be reliable.

### Successive prediction

Estimate time-to-effect, project observed motion across that interval, update the time using the new distance, and stop after one or two passes. Explain why convergence is fast in the intended regime and why it fails for rapid acceleration.

### First-order perturbation

Solve a no-disturbance baseline, then add small independent corrections for cross-flow, elevation, latency, or decay. Explicitly warn that corrections cease to add linearly when disturbances become large.

### Error-budget allocation

Break allowed miss distance among range error, timing error, direction error, execution jitter, and disturbance. Spend training time or 法力 on the dominant term rather than improving everything equally.

## Technique cues

- Define whether the eye, leading hand, focus, or constructed projectile is the angular origin.
- Distinguish aiming direction from release direction when the spell has latency or recoil.
- Use breath phases as timing gates: observe, solve, construct, commit, follow through.
- Keep follow-through meaningful: it maintains a guidance channel, samples deviation, or safely closes it.
- Provide a no-release reset when the solution becomes stale.

## Failure taxonomy

- **Range bias:** repeated long or short placement; recalibrate perception or speed profile.
- **Lead error:** correct line but behind/ahead; diagnose timing versus velocity estimate.
- **Frame error:** consistent lateral or vertical rotation; repair stance/gaze alignment.
- **Model mismatch:** good arithmetic with wrong profile; choose another solver.
- **Control oscillation:** alternating overcorrections; lower gain or slow correction rhythm.
- **Stale solution:** conditions change between estimate and release; shorten commit window.

Keep analogies to marksmanship, artillery, and guidance at the level of estimation, uncertainty, and feedback. Use academy-calibrated parameters and training exercises rather than real firing data or operational procedures.
