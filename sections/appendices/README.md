# Appendices

- [Notation](notation.tex) collects the book's shared symbols.
- [Assumed knowledge](assumed-knowledge.tex) recalls elementary mathematical background.
- [Solutions to exercises](exercise-solutions.tex) repeats each shared problem before its solution, in book exercise order.
- [Formula sheet](formula-sheet.tex) follows book topic order through sets and cardinality, bounds and algebra, sequences, series, and power series, followed by common proof moves. Its portrait, two-column layout and explicit topic inputs are shared with the standalone version.

The root [formula-sheet.tex](../../formula-sheet.tex) builds the same content
as a standalone document, through `make formula-sheet` or TeXShop.

The [homework placement map](../../README.md#homework-placement-map) remains
the authoritative record of exercise inclusion and solution order.

## Formula-sheet coverage audit

This audit uses the shared problem statements and solutions. It does not
change the homework placement map or reproduce the exercise solutions.

| Assignment | Question coverage in the shared reference |
| --- | --- |
| [Homework 01](../../problems/hw01.tex) | Q1 membership and De Morgan; Q2 power sets; Q3 and Q9 divisibility and root contradictions; Q4--Q5 interval maps; Q6 algebraic/transcendental cardinalities and CH; Q7 polynomial contradiction and clearing denominators; Q8 digit encoding and Cantor--Bernstein; Q10 countable unions and diagonal enumeration. |
| [Homework 02](../../problems/hw02.tex) | Q1--Q3 nested-interval hypotheses and missing rational limits; Q4 arithmetic sums, monotonicity, Cauchy estimates, and extrema; Q5 factorial comparison, bounds, and the scaled remainder for e; Q6 Newton's formula, invariant intervals, sign factorisation, and fixed-point limits. |
| [Homework 03](../../problems/hw03.tex) | Q1--Q2 direct Dedekind-cut and boundary arguments; Q3 residue classes and upper/lower limits; Q4 recurrence bounds and Fibonacci ratios; Q5 geometric covering sums, density, and incompleteness; Q6 and Q8 powers and root uniqueness; Q7 reverse triangle inequality and equality. |
| [Homework 04](../../problems/hw04.tex) | Q1--Q2 standard root limits and dominant terms; Q3 alternating tails and Cauchy convergence; Q4 rationalisation, comparison, and telescoping; Q5 lower/upper limit comparison; Q6 ratio/root divergence; Q7 power-series radii and endpoints, including nonpositive integer powers; Q8 AM--GM and its equality condition. |

## Changelog

### 2026-11-06

- Record approval of all remaining pending appendix and homework content.
  Restore HW07 Q1's full expanded tail before the sum, explaining short-tail
  truncation locally. Preserve expanded working that teaches a pattern.
- Incorporate the author's HW07 Q1 solution in its existing shared file.
  All ten HW07 solutions are now supplied and complete. Preserve the author's
  working and keep only focused repairs and a new contraction diagram pending
  review. The earlier Q2--Q10 approvals remain intact. Exercise identities,
  complete restatements, and appendix order are unchanged.
- Add the author's shifted-index finite geometric sum in both its difference
  and factored forms, with integer endpoints and the r = 1 term count.
  Generalise the infinite-tail formula from N + 1 to an arbitrary
  nonnegative integer n, displaying both unit and scaled terms. Preserve
  the zero-start formulas and explain factoring out r to the nth power.
  Keep finite sums before sequences and infinite sums, with the standalone
  sheet still limited to two pages.
- Check the author's requested geometric-series formulas against the shared
  formula sheet. The finite sum and infinite sum already include a general
  first term a, covering the unit-first-term cases. Add the supplied finite
  geometric-tail identity and its bound beside the sequence Cauchy criterion.
  State the integer-index and ratio conditions, and retain the observation
  that the bound is independent of m and tends to zero with n. Keep the
  standalone sheet on two pages without duplicating existing formulas.
- The author approved all pending HW07 edits. Restore normal text colour
  in the supplied Q2--Q10 solutions, their diagram captions, and the domain
  clarifications, preserving the reviewed mathematics and shared sources.
- Add the author's HW07 Q2--Q10 supplied proofs through their existing
  shared solutions. Preserve the author's voice and valid calculations.
  Keep focused mathematical amendments and three diagrams pending review.
  Complete the omitted limit in Q6 with the supplied logarithmic strategy,
  justify the real-variable L'Hôpital applications in Q8, and take Q10's
  limit from the right. All 62 statement/solution pairs retain their order.
  Q1 of HW07 and all ten HW06 solutions remain awaiting the author's work.
- Put HW07 Q7's existing nonzero-parameter qualification in the body.
  A margin callout could land on the preceding handout page, separating
  the necessary condition from the quotient to which it applies.

### 2026-11-04

- Replace the notation appendix's LaTeX error-message specimens with a pending
  reference to symbols actually used in the book, in mathematical topic order.
  Preserve all shared exercise identities and the two-sided formula-sheet scope.
- Review the 42 supplied solutions. Mark new explanations at their changed
  spans, keeping earlier approvals intact. The finite-chain uniform-continuity
  proof now telescopes the changes directly and keeps the choice of N
  independent of the point. The Fibonacci and polynomial-root conclusions
  are explicit. No HW06 or HW07 solution is added.
- Check the formula sheet's assumptions and add positive C and alpha to its
  general error-bound index choice. The sheet's existing header already
  specifies positive N. Replace prose semicolons without expanding exam scope.

### 2026-10-30

- Add all ten HW06 shared statements and awaiting-solution notices in the
  order used in Chapter 8. Preserve complete restatements and both link
  directions; the HW04 power-series exercise moves from position 42 to 51
  without changing its identity or approved solution. Formula-sheet content
  and its Homework 01--04 exam scope remain unchanged.

### 2026-10-28

- Move all 42 solution links to italic text at the ends of the original
  exercises in the main body because growing margin content displaces
  navigation links and separates them from their exercises. Append each
  link after the complete statement and any hints; keep appendix
  restatements free of these links while retaining linked exercise numbers,
  complete statements, stable labels, and existing order.

### 2026-10-27

- The author approved the complete formula sheet, including the proof reminders and background identities. Remove all review wrappers from the shared sheet so both the standalone version and book appendix render in normal black text.
- Audit all 32 questions of Homework 01--04 and retain hypotheses, endpoint conditions, and compact proof moves. The author requires one physical sheet printed on both sides, so the standalone entry uses two US Letter pages, 8pt body type, and 0.4-inch margins. Retain the book's Tufte page geometry and natural column flow.
- Keep higher-power arithmetic sums and the general binomial identity in the book reference, omitting them from the two-page exam extract because no assigned question directly requires them. Shared formulas are authored once; the standalone flag selects the extra compact layout and those omissions.
- Place Newton and quadratic formulas beside the recurrence proof reminders on the back of the standalone sheet, keeping their shared definition in the algebra topic file. In the book they stay in the algebra reference before sequences.
- Keep the standalone formula sheet and the book appendix on one shared source. The root entry controls standalone numbering and compilation; the appendix entry holds layout and an ordered input list, while formulas and proof reminders live in the adjacent numbered topic files under `formula-sheet/`.
- Group the formula sheet into finite sums, sequences, and infinite series. Follow Chapter 3's order through convergence, limit laws, squeeze, monotonicity, subsequences, upper/lower limits, and Cauchy criteria; separate finite identities from their infinite-series consequences and let the columns flow in reading order.
- Use the same set-and-arrow TikZ source in Assumed knowledge and the opening cardinality discussion, preserving consistent spacing, image shading, and cardinality comparisons in both explanations.
- Recall divisibility, primes, GCD, and lowest terms in Assumed knowledge, allowing zero as an integer multiplier and distinguishing a chosen reduced fraction from an arbitrary representation of a rational or prime. Link Euclid's lemma and the shared prime-root solution to explain the GCD contradiction without duplicating the proof; keep this new recall pending review.

### 2026-10-16

- The author approved all Homework 05 solutions for submission. Remove only
  their pending-review wrappers so the shared solutions and captions render
  in normal text colour in both the appendix and standalone handout.
- Complete the nine remaining Homework 05 solutions in their shared files,
  with six supporting margin diagrams. Keep the new solutions pending review
  and preserve the author's completed Q2 with its existing surgical review
  marks. All ten solutions now appear in the appendix and standalone handout;
  exercise identities, shared statements, and appendix order are unchanged.

### 2026-10-15

- Add all ten Homework 05 statement/solution pairs in book order, with
  unsupplied solutions marked awaiting solution. Insert a Continuity
  group for its nine Chapter 5 exercises and place Q9 before the existing
  power-series exercise. Preserve the first 31 pairs and all stable keys;
  the existing HW04 Q7 becomes pair 42.

### 2026-10-09

- The author approved the edits to all Homework 04 solutions, including
  Q4--Q8 supplied in `images/HW05/`. Remove their review colouring,
  retaining the approved working in the shared solutions and their
  complete restatements.
- Add the author's Homework 04 Q4--Q8 solutions from `images/HW05/` to
  their existing shared files, so the handout and appendix use the same
  audited text. Keep the author's valid working in black and mark only
  corrected or added spans in slate blue. All Homework 04 solutions are
  now supplied; exercise identities and appendix order are unchanged.
- Keep the author's Homework 04 Q1--Q3 methods in the audited shared
  solutions, marking only corrected or added spans with the shared review
  component in both the appendix and handout. Preserve unchanged wording
  and equations in their normal colour to make each pending edit identifiable.
  Finite alternating-tail bounds must include
  the last term for each parity before removing the absolute value.
- Append the eight Homework 04 problem/solution pairs in book exercise
  order, grouped under their three syllabus chapters. Repeat every shared
  statement in full, retain the linked book exercise identity, and mark
  unsupplied solutions as awaiting solution without forced page breaks.

### 2026-10-05

- Add Formula sheet after the solutions so the existing appendix and exercise identities remain stable. Keep sequences and series in separate columns, include the hypotheses beside each formula, and scope the compact layout locally so the rest of the book keeps its normal typography. Begin with the sequence results used in the first three weeks and elementary summation identities; expand the sheet as further course material is reviewed.

### 2026-10-03

- Keep elementary recall in Assumed knowledge, while stating the necessary definitions before their first use in the main text. The opening cardinality discussion must define a function, domain, and codomain before referring readers here for fuller explanations of injectivity, surjectivity, and bijectivity.
- Adapt the author's linear-algebra recall with both finite-set maps and Euclidean examples. The plane inclusion and coordinate projection distinguish injectivity from surjectivity, and changing the inclusion's codomain shows why the codomain is part of the function.
