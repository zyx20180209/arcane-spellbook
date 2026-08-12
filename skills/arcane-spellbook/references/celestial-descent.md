# Celestial and atmospheric-descent spells

Use for summoned meteors, redirected celestial matter, extreme-altitude drops, orbital constructs, and long-duration descending effects.

## First classify the spell source

These are different spells and must not share a model without explanation:

- **Created locally:** mana assembles matter or a release field aloft; no prior orbit exists.
- **Translated:** an existing body is moved through space; momentum and transfer cost matter.
- **Redirected:** a body already in motion receives a small change that accumulates over time.
- **Projected image/effect:** only the local endpoint resembles a meteor; model it as a field spell.

State which one is true. This choice determines casting time, observability, mana accounting, and narrative scale.

## Knowledge index

| Problem | Study areas | Spellbook use |
|---|---|---|
| Motion in gravity | Newtonian gravitation, orbital mechanics, two-body problem | long-range state evolution |
| Change an orbit | energy and angular momentum, transfer-orbit concepts, perturbation theory | preparation cost and delayed effects |
| Predict arrival | numerical integration, event detection, uncertainty propagation | time and location windows |
| Enter an atmosphere | compressible flow concepts, drag, heating, ablation, fragmentation | survival and visible descent |
| Correct the endpoint | state estimation, feedback control, robust optimization | bounded magical course correction |
| Understand impact scale | conservation laws, dimensional analysis, scaling laws | internally consistent consequences |
| Manage many bodies | n-body concepts, chaos, covariance growth | why prediction horizons are limited |

Recommended study sequence: vectors and conservation laws; central-force motion; orbital elements as a state representation; perturbations; numerical propagation; atmospheric entry; uncertainty growth and decision thresholds.

## Time-scale architecture

Celestial spells should reward preparation. Divide computation into:

- **ephemeris phase:** establish the body's state and uncertainties well before casting;
- **window selection:** find intervals in which cost, visibility, and endpoint tolerance are acceptable;
- **commit phase:** apply the major magical change;
- **coast phase:** predict and monitor rather than continuously force;
- **terminal phase:** apply only corrections that remain physically and magically plausible;
- **exclusion phase:** abort, divert, fragment, or dissipate before the last reversible point.

The intellectual challenge is chiefly prediction under growing uncertainty, not fast arithmetic at the final second.

## Field representations

- Use orbital elements or another compact state description as a learned coordinate system.
- Precompute families of canonical transfers or descents and interpolate between them.
- Represent endpoint uncertainty as a corridor or footprint, not a single point.
- Declare a last-correction time after which increased input cannot safely recover the solution.
- Treat atmosphere and arcane weather as observations that update the prediction during descent.

## Characteristic failures

- wrong object or wrong state epoch;
- accumulated timing error producing a large endpoint shift;
- atmospheric model mismatch;
- fragmentation invalidating the single-body model;
- correction authority exhausted before terminal phase;
- successful endpoint calculation with unacceptable surrounding consequences.

Keep operational missile design, real targeting, and impact-planning instructions out of generated chapters. Express this restriction only as an authoring boundary, not as a disclaimer to academy readers.
