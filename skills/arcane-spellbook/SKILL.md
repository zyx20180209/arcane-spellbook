---
name: arcane-spellbook
description: Design and write rigorous in-world spellbook material in which spells are learnable technical skills. Use when creating or revising a spell, spell model, casting procedure, prerequisite curriculum, drill, exercise, failure analysis, or mastery standard, especially when mathematics, physics, algorithms, perception, embodied technique, and time-limited mental calculation must make the spell feel executable.
---

# Arcane Spellbook

Treat a spell as an embodied real-time control skill, not a formula with fantasy vocabulary. Make theory determine what the caster observes, computes, does, and corrects.

## Required workflow

1. Read [foundations.md](references/foundations.md) for every spell task; its terminology and mana architecture are binding.
2. Classify the spell by its dominant control problem. Read the matching references:
   - Free projectile, indirect fire, beam lead, or area placement: [trajectory-spells.md](references/trajectory-spells.md)
   - Ice, frost, phase-change projectiles, atmospheric water collection, or cryogenic material variants: [cryogenic-projectiles.md](references/cryogenic-projectiles.md)
   - Meteor, orbital, extreme-range, or atmospheric-descent effects: [celestial-descent.md](references/celestial-descent.md)
   - Curse, blessing, remote healing, summons, or any target-bound effect: [target-locking.md](references/target-locking.md)
   - Field, barrier, transformation, teleportation, illusion, divination, healing, or enchantment: [domain-index.md](references/domain-index.md)
   - Multi-joint proxy limbs, dexterous manipulation, remote touch, or human-hand simulation: [robotic-hand-reference.md](references/robotic-hand-reference.md)
3. Read [chapter-standard.md](references/chapter-standard.md) before drafting a complete spell chapter.
4. Read [training-and-assessment.md](references/training-and-assessment.md) when writing lessons, drills, exercises, or mastery criteria.
5. Read [style-guide.md](references/style-guide.md) before drafting or revising reader-facing prose.
6. State academy laws and assumptions before choosing equations. Never import a real model without defining how magic changes it.
7. Separate exact theory from the approximation a caster can actually perform under time pressure.
8. Trace every model variable to an observation, a control action, or a pre-cast setting. Remove decorative variables.
9. Test the model against at least one ordinary cast, one disturbed cast, and one abort scenario.
10. Before delivery, run `ruby scripts/validate_spell.rb <spell.md>` on every complete or revised spell chapter. Fix every reported error, then perform the semantic consistency pass: verify that every symbol is defined, every energy term is identified as 法力, and every ordinary unit is SI.

## Modeling rules

- Divide performance into five phases: offline study, pre-cast calibration, runtime estimation, feedback correction, and post-cast review.
- Give the caster a finite attention and calculation budget. Complexity must cost time, concentration, aids, or error.
- Convert mathematics into cues and actions: what is sensed, how it is estimated, what gesture/breath/phrase encodes it, and what correction follows.
- Use dimensions and named units consistently. Define every magical quantity operationally: explain how a practitioner measures it.
- Treat **法力** as the sole energy source of every spell. Heat, impulse, constraint, motion, resonance, and other named effects are channels, states, or costs of transformed 法力; do not introduce a second energy source.
- Use SI units for ordinary measurable quantities: meters, seconds, kelvin, kilograms, and derived SI units as applicable. Measure 法力 in the declared academy unit $\mathrm{ae}$; do not create separate fantasy units for distance, time, temperature, mass, or each spell school.
- Write every mathematical symbol with `$...$` or `$$...$$`, never as code-formatted variables. Write units inside math mode as `\mathrm{m}`, `\mathrm{s}`, `\mathrm{K}`, and `\mathrm{ae}`; use `\,` between a number and its unit. Use LaTeX for subscripts, Greek letters, fractions, roots, vectors, and multi-line derivations.
- Prefer a small composable model over one impressive equation. Identify state variables, control variables, disturbances, constraints, and success criteria.
- Provide a fast field algorithm as well as the full derivation. State its validity range and characteristic failure.
- Make expertise qualitative as well as quantitative. Experts select models, reject bad observations, manage uncertainty, and abort earlier; they do not merely calculate faster.
- Preserve genuine uncertainty. Do not let an equation grant knowledge the caster has no way to observe.
- Make safety procedures mechanically meaningful: safe direction, containment, degraded mode, abort cue, and residual-mana handling.
- Keep real-world references conceptual and pedagogical. Do not reproduce weapon firing tables, operational targeting procedures, guidance-system construction, or methods for identifying or tracking real people. Keep this boundary in the authoring rules, not in reader-facing prose.

## Output contract

For a complete practical spell, produce the sections required by `chapter-standard.md`. For an outline or discussion, use only the relevant sections, but always include:

- the spell's control problem;
- required observations and controllable quantities;
- what is learned beforehand versus computed during casting;
- the field approximation and its limitations;
- feedback, failure, and abort behavior;
- drills and an observable mastery standard.

Use notation only after introducing the physical or magical meaning. Explain the practitioner's mental procedure in plain language alongside equations. Write directly for apprentices and mages; the executable feeling must come from internal consistency, training progression, and measurable feedback. Do not call the world, its units, or its laws "fictional", "架空", or "虚构" in a spell chapter.
