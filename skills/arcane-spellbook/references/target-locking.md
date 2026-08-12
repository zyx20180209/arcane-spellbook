# Target-bound spells and identity locking

Use for curses, blessings, remote healing, summons, bindings, oaths, tracking effects, and any spell whose effect must remain attached to a particular in-world entity.

## Separate four problems

Do not collapse these into a single idea called "lock":

1. **Acquisition:** detect candidate entities.
2. **Identification:** decide which candidate is the intended identity.
3. **Association:** keep successive observations assigned to the same entity.
4. **Binding:** attach the magical effect and define when it transfers, persists, or breaks.

This separation creates useful failure modes: failure to see, mistaken identity, track swap, and incorrect metaphysical binding.

## Knowledge index

| Problem | Study areas | Spellbook use |
|---|---|---|
| Define identity | logic, equivalence relations, philosophy of identity, ontology | decide what counts as "the same person" |
| Combine weak signs | Bayesian inference, likelihood ratios, evidence theory | update confidence from several cues |
| Match a signature | feature vectors, distance metrics, classification, hypothesis testing | compare arcane resonance patterns |
| Maintain continuity | state-space models, filtering, data association | follow a moving or changing target |
| Resist impersonation | challenge-response concepts, authentication factors, adversarial reasoning | distinguish disguise from identity |
| Bind through relations | graph theory, relational logic, type systems | target by oath, lineage, possession, or role |
| Control false matches | precision/recall, thresholds, cost-sensitive decisions | trade missed casts against misbinding |
| Protect the binding | checksums, invariants, formal verification concepts | detect corruption or illicit transfer |

Recommended study sequence: sets and predicates; probability and conditional evidence; classification error; sequential updating; graph relations; adversarial cases; formal binding contracts.

## Magical identity channels

Choose one or more observable channels and define how magic exposes them:

- current physical pattern;
- persistent arcane resonance;
- self-model or conscious response;
- causal history;
- relational token such as an oath or freely given link;
- true-name-like symbolic key;
- carried object with a declared provenance chain.

Each channel must have mutation, ambiguity, spoofing, and expiry rules. A name alone should not be an infallible global identifier unless the world's ontology explicitly makes it one.

## A usable lock algorithm

Write locking as a staged decision:

1. define the target predicate before raising power;
2. collect independent observations;
3. reject observations below quality thresholds;
4. update candidate scores;
5. require a confidence margin over the runner-up, not merely a high top score;
6. issue a low-power probe or magical challenge when ambiguity remains;
7. bind only after identity and association checks agree;
8. monitor invariant cues and break the effect on contradiction.

Specify which stages happen offline, during ritual preparation, and during the live cast. Expert performance should include recognizing when evidence cannot justify a lock.

## Good sources of difficulty

- twins, copies, shapeshifting, resurrection, possession, memory loss, and divided consciousness;
- stale tokens and borrowed possessions;
- crowds creating association swaps;
- a target changing faster than the observation cycle;
- correlated clues mistakenly counted as independent evidence;
- a valid identity lock attached to the wrong body or temporal instance;
- an effect whose definition of identity differs from the caster's intention.

## Ethical and safety boundary

Use magical sensory channels and abstract algorithms. Do not provide procedures for locating, deanonymizing, surveilling, or biometrically identifying real people. For beneficial consensual spells, consent can itself be a high-quality challenge-response factor. For hostile spells, focus on metaphysical ambiguity, resource cost, counterspells, and in-world consequences. Keep these restrictions in the authoring layer rather than reader-facing prose.
