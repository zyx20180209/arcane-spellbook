# Practical spell chapter standard

Use this structure for a complete spell. Merge sections only for a deliberately short entry.

Use one continuous major-section sequence. When revising, replace the old section instead of appending a second version; do not duplicate training phases, exercises, answer keys, or interface definitions under new numbers.

## 1. Operational definition

State the observable effect, allowed variants, exclusions, typical use conditions, and the exact event that counts as completion. Distinguish the popular name from the technical definition.

## 2. Entry requirements

List conceptual prerequisites, prerequisite spells, perception skills, physical tolerances, safety certifications, and equipment. For each prerequisite, say why it is needed.

## 3. Arcane laws and assumptions

Define academy laws, conserved quantities, units, environmental coefficients, and what magic adds to or overrides in ordinary physics. State that 法力 is the sole energy source; name heat, force, motion, resonance, and field integrity only as transformation channels, states, or costs. Classify the spell's energy architecture as discrete, sustained, or hybrid. For sustained spells, specify startup cost, continuous power terms, planned duration, peak power, and the 法力 reserved for safe abort. Include a dimensional or consistency check. Keep this section positive and in-world: state the academy law directly.

## 4. State and control model

Provide a table of state, observation, control, disturbance, constraint, and objective variables. Then give the smallest set of equations or rules that predicts behavior well enough to train the spell.

Include a symbol and unit table before the first exercise. Every symbol used in an exercise or answer must appear in that table or be defined immediately before use.

## 5. Full solution

Derive or explain the exact or high-fidelity method learned in study. Show why the method works, what assumptions it uses, and how it generates prepared tables, canonical cases, or mental shortcuts.

Add one complete worked example between the theory and the exercise set. Show the input, substitution, units, result, and casting decision; do not present an answer key as the first worked calculation.

## 6. Field algorithm

Write a numbered algorithm that a trained caster can execute. Include input acquisition, model selection, arithmetic or geometric steps, decision thresholds, time budget, commit point, and fallback. State expected accuracy and validity range.

## 7. Casting technique

Describe stance, gaze, breathing, gesture, phrasing, timing, sensation, and follow-through as functional parts of the control interface. Give external coaching cues and internal sensory cues. Include setup, execution, recovery, and reset.

## 8. Feedback and correction

List predicted cues, observed deviations, diagnosis, bounded correction, and the point at which correction must become abort. Distinguish slow drift, sudden disturbance, and unstable oscillation.

## 9. Safety and abort

Define the safe training environment, academy exclusion zone, mana-limited beginner form, abort cue, residual mana disposal, miscast response, and conditions under which casting is prohibited.

## 10. Training progression

Progress from isolated perception and calculation to unloaded technique, controlled manifestation, static tasks, dynamic tasks, disturbances, dual tasks, and realistic scenarios. Avoid making every drill a complete cast.

## 11. Exercises

Include conceptual derivation, numerical or symbolic practice with academy-calibrated quantities, model-selection cases, error diagnosis, and practical drills. Supply solutions or evaluation rubrics separately when appropriate.

## 12. Mastery standard

Specify conditions, repeated trial count, tolerance, time limit, disturbance level, abort performance, diagnosis requirement, and retention or recertification. Do not use vague verbs such as "understands" without observable evidence.

## 13. Failure atlas

For each major failure, list visible/sensed symptom, likely causes, discriminating test, immediate response, and corrective drill. Include model error, observation error, calculation error, execution error, and environmental mismatch.

## 14. Variants and transfer

Show which variables change in faster, larger, guided, safer, or specialized variants. Identify which skills transfer and which require a new model. Advanced power must introduce a new control problem, not only larger numbers.

## Quality review

- Can a student tell what to do next at every step?
- Can an instructor observe and diagnose performance?
- Is runtime calculation plausible within the time budget?
- Does every equation affect practice?
- Are ordinary quantities expressed in SI units, with 法力 measured in the defined academy unit $\mathrm{ae}$?
- Are every variable, unit, subscript, and formula written in renderable LaTeX rather than code formatting? Do not use Unicode superscripts, subscripts, or raw Greek letters when LaTeX is available.
- Are headings standard Markdown (`#`, `##`, `###`) with no generated forms such as `#{1,6}`?
- Are numbered major sections unique, increasing, and continuous, with no old revision block left later in the file?
- Does a global search find no obsolete energy names or reader-facing meta terms such as “弧能”, “法能”, “架空”, “虚构”, or “不对应现实”?
- Are exact theory, prepared aids, and field approximation distinct?
- Are uncertainty and abort behavior explicit?
- Does expertise reduce error through better judgment, not unexplained intuition?
- Does the prose explain the practical reason before issuing an instruction, with a calm instructor's voice rather than generic technical or novelistic language?
- Does the chapter maintain an in-world academy voice while avoiding real-world hazardous instruction?
