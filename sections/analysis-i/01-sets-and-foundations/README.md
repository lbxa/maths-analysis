# Sets and foundations of real analysis

This chapter contains the first three weeks of Analysis I. Its first eleven
sections retain the lecturer's syllabus headings and order. A closing overview
of number systems and cardinalities supplements that sequence. The [homework placement
map](../../../README.md#homework-placement-map) records every shared exercise
and its appendix order; the [book-wide changelog](../../../README.md#changelog)
records the constraint on the syllabus structure.

## Changelog

### 2026-10-27

- Present §1.12 as a synthesis of the algebraic/transcendental classification in §1.3 and the root construction in §1.11. Link the earlier classification and cardinality proposition directly, and explain how the nested boxes and equalities express the same distinction; preserve the syllabus order and the closing overview's position.
- The author approved the Euclid's lemma passage in §1.2, including its proof, consequences, and historical and application margin notes. Remove its review wrappers while preserving the text and references.
- Keep Euclid's original Book VII statement and the connection to unique prime factorisation in optional margin notes beside the lemma; link its power-divisibility consequence to the later irrationality arguments while retaining every necessary proof step in the body.
- Anchor the sigmoid and endpoint-shift margin diagrams immediately after their defining formulas. This keeps them beside the function definitions when examples cross pages and leaves adjacent exercise solution links aligned.
- State and prove Euclid's lemma in §1.2, before its use for the monic rational-root argument in §1.3, displaying the product-to-factor implication and its immediate square case so the connection to irrationality proofs is explicit. Use well-ordering and integer division rather than assuming unique prime factorization or an unstated Bézout identity; explain the prime-divisor-of-a-power and coprime-powers consequences and link the later book reminders to the lemma. Retain the standalone prime-root solution's brief statement so its handout remains self-contained.

### 2026-10-26

- Add a pending second density proof using decimal truncations, with the decimal cells around $\sqrt2$ as its worked illustration. Apply the construction to every real number, including negative inputs by reflection, so the illustration does not stand in for a proof of density; mark the zoom diagram's changing scales explicitly and retain the original general-denominator argument.
- Add the author-requested function/cardinality comparison beside the first map and cardinality definitions, retaining its source screenshot in `images/function-cardinality/source-note.png`. Use finite set-and-arrow diagrams with the image shaded, explain the reverse injection obtained by selecting preimages for a surjection, and retain the axiom-of-choice qualification for arbitrary infinite sets; distinguish equality of set sizes from bijectivity of a particular map.
- Put HW01 Q4 immediately after the sigmoid bijection and Q5 immediately after the endpoint-shift example, so each exercise reverses the map used in that step of the real-cardinality argument. Keep Q8 after the completed comparison as the digit-encoding extension from an interval to a square. Their relative order remains Q4, Q5, Q8, so the existing appendix order and shared solution identities still apply.
- Anchor the continuum-hypothesis reminder after the alternative algebraic comparison, leaving the margin beside Q5 free for its solution link. Keep the interval exercises beside their examples rather than moving them to accommodate a secondary note.
- Put the full Cantor--Schröder--Bernstein name, the role of the two injections, and the naming history beside the theorem's first statement. Keep the theorem's short name and statement intact; distinguish Schröder's flawed published proof from Bernstein's correct proof and acknowledge Dedekind's earlier unpublished proof.
- Illustrate the endpoint-shift bijection with two infinite chains, one for each denominator parity. This shows how shifting each reciprocal two places frees the first two values without suggesting that infinitely many points must be moved one at a time or that the diagram uses number-line spacing.
- Develop the touching-halves obstruction and the separated outer-thirds construction before introducing the name of the middle-thirds Cantor set. Draw the outer-thirds stages as closed intervals using the earlier halving figure's shared strokes, endpoint markers, and label size; give the rows room rather than compressing a comparison into two panels. Distinguish the injective point-to-chosen-code map from the noninjective evaluation of all binary codes; put the historical attribution and the length-versus-cardinality observation in margin notes only after the object is named. Keep the convention that membership requires an allowed ternary expansion, since retained endpoints may also have another expansion using the digit 1.
- Expand the cardinality argument in §1.3 using the author's six-page proof, `IMG_9342`--`IMG_9347`, preserved under `images/real-cardinality-proof/` and converted with `scripts/jpeg.sh` under `images/jpeg/real-cardinality-proof/`. Keep interval halving, the binary ambiguity and its ternary repair, the sigmoid inverse, and the reciprocal-sequence shift together before the existing interval exercises; retain the earlier algebraic injection as an alternative comparison.
- Keep the author's supplied argument in normal text colour. Mark the deterministic midpoint convention, binary-sequence/power-set identification, explicit strict tail bound, endpoint-shift justification, and exponential/logarithm background notice as pending additions. The halving map supplies only one cardinal inequality; do not treat binary evaluation as injective, or discard noncanonical binary strings without repairing the reverse inequality.

### 2026-10-21

- Add a short, author-requested closing section on number systems and infinite cardinalities, using nested rectangular boxes to distinguish containment from cardinality and to locate real algebraic and transcendental numbers. Keep the overview after the existing syllabus sections so it can use their counting results without changing exercise placement or numbering.
- Distinguish the continuum from the aleph hierarchy explicitly. The equality of the continuum with aleph one is CH, while the real and complex numbers have equal cardinality without that assumption; stop at a brief explanation of the continuing hierarchy rather than developing ordinal theory.

### 2026-10-03

- Introduce subsequences and sequence limit points explicitly in §1.9 before the upper/lower-limit exercise. Explain increasing-index selection, write the odd and even subsequences out, and show why a bounded sequence with only one limit point converges as a whole. Use an exact oscillating example and its nested tail intervals to distinguish bounds on all limit points from the limit points themselves, and justify the extreme-endpoint interpretation using actual terms near the tail infima/suprema and the squeeze theorem.
- Introduce induction and well-ordering with countable sets, before enumeration and finite counting arguments. The later induction and Archimedean section combines those tools with real bounds and the floor function instead of introducing them for the first time.
- Prove the triangle inequality and elementary limit laws before the first convergence arguments, and show the absolute-value graph beside its first definition. The polynomial and absolute-value section refers back to that graph and develops positive and negative parts and the reverse-triangle exercise.
- Prove the Archimedean property directly from LUBP in the supremum section, before the six-way completeness chain. This removes the chain's forward dependency and keeps its proof independent of the equivalences it supports.
- Keep Newton's geometric motivation and conditional fixed-point calculations in the convergence section, but put the convergence proof, HW02 Q6, and HW03 Q4 after positive-root existence. Their assessed applications then have induction, Archimedean bounds, limit laws, and monotone convergence available.
- Put HW01 Q3 with the root exercises after existence and uniqueness of roots, and recall Euclid's lemma before it. Irrationality of a root should follow a construction of the root being discussed.
- State positional representation and Cantor–Bernstein before the cardinality exercises, treating familiar numeral and trigonometric facts as explicit elementary background. Prove positional representation after completeness, floor, and geometric sums so the cardinality section keeps its syllabus location without borrowing an unstated nested-interval argument.
- Construct e and prove its irrationality after monotone convergence and a geometric-sum estimate, beside HW02 Q5 and the missing-limit examples. HW03 Q5 follows that same estimate and the distinction between closure and metric completion, rather than depending on the later series chapter.
- Keep the Jacobian conjecture as an optional excursion at the end of the power-set section, after its exercises. It preserves the lecturer's question without interrupting the cardinality arguments or becoming a prerequisite for the completeness material.
