# Editorial review, 4 November 2026

This pass covers the included Analysis I manuscript, front matter, notation,
assumed knowledge, shared Homework 01--07 material, solutions appendix, and
the shared formula sheet. Analysis II remains excluded. The review preserves
the nine-chapter syllabus order, the 62 exercise identities and their order,
the 20 awaiting-solution notices, and existing author approvals. New or
replaced mathematical prose remains pending at the changed span.

## Findings and changes

| Area | Editorial outcome |
| --- | --- |
| Front matter | Replace the empty introductory sentence with a short account of limits, completeness, and the distinction between existence and computation. Preserve attribution and licence terms. Give the copyright paragraph local line-breaking flexibility. |
| Chapter 1 | Check set and cardinality distinctions, both injections in the continuum proof, completeness implications, density, root existence, and iteration prerequisites. Make binary place values explicit, distinguish interval length from cardinality, prove the irrational-density fact used later, and replace the remaining manually formatted figure references with automatic references. |
| Chapter 2 | Remove unrelated typeface and heading specimens. Retain all syllabus sections and historical notes. Explicitly identify the undeveloped metric-space treatment and link to the real-line arguments already available. |
| Chapter 3 | Check sequence quantifiers, squeeze bounds, AM--GM, the binomial limit, subsequence selection, and extended tail bounds. Preserve the separation of existence from identification of a limit. Clarify that infinite tail values describe unbounded behaviour. |
| Chapter 4 | Check finite tail indices, comparison directions, geometric thresholds, the p-series argument, alternating pairings, and Cauchy-product hypotheses. Connect assumed real powers to their later construction. Keep Dirichlet's test explicitly reserved. |
| Chapter 5 | Check continuity hypotheses, dense-set examples, extremal-sequence arguments, the supremum IVT proof, inverse continuity, and the common-index compactness argument. Retain all source hypotheses and deliberate elementary recalls. Move Heine's historical note after the proof to clear the comparison diagram's caption. |
| Chapter 6 | Check cancellation before limiting, one-sided derivatives, stationary-point conditions, Rolle/MVT hypotheses, both Taylor proofs, convexity, Jensen's forward integral assumptions, and inverse differentiability. Retain stated-without-proof status for the general differentiation rules and the infinity-quotient rule. |
| Chapter 7 | Remove section-numbering instructions, sample prose, and the unrelated heading-level table. Preserve the five syllabus headings and the explicit incompleteness of integration theory. |
| Chapter 8 | Check pointwise/uniform quantifiers, supremum-norm axioms, equicontinuity, uniform Cauchy and majorant estimates, radius endpoints, exp/log construction, analytic multiplicity, and Bernstein's near/far estimate. Keep power-series differentiation explicitly stated without proof. |
| Chapter 9 | Retain the historical motivation and reserved convergence treatment. Do not manufacture Fourier coefficients, hypotheses, or proofs. |
| Notation and assumed knowledge | Replace LaTeX error-message specimens with mathematical notation in topic order. Preserve the distinctions between input, output, image, codomain, divisibility, and lowest terms. |
| Shared solutions | Check all 42 existing solutions, keeping every essential step in the body. Improve the set-equality reminder, write the Fibonacci limiting equation in full, state the polynomial-root conclusion explicitly, and streamline the finite-chain boundedness proof through telescoping while preserving its method and fixed bound. |
| Formula sheet | Preserve the Homework 01--04 scope and one-sheet, two-sided format. Check hypotheses against the shared problems and add positivity assumptions to the general error-bound index choice. Remove prose semicolons while retaining the ordered topic files. |

Prose semicolons were replaced throughout the included chapters and reference
material. Semicolons inside source comments, citation locators, or mathematical
notation are not sentence punctuation. Original assignment wording is preserved.
No missing homework solution has been written during this pass.
The unused Tufte documentation macros and eleven unreferenced specimen PDFs
have also been removed. The typesetting attribution and applicable licences
remain intact.

## Attribution and research boundaries

The historical inventory remains the record of primary evidence and its
limits. The original Cauchy volume's contents confirm Note II for inequalities
and means. The Jacobian discussion now establishes only the displayed
example's inverse and presents the classical formulation through its cited
source. It no longer turns a 2016 reference into an undated assertion about
the current status of the general problem. A full assessment of recent claimed
resolutions is outside this editorial pass.

## Material that still needs author input

- Chapters 2, 7, and 9 remain incomplete mathematical treatments.
- Dirichlet's test and uniform convergence with integration remain reserved.
- The general differentiation rules, the infinity-quotient form of L'Hôpital's
  rule, and power-series differentiation are stated without general proofs.
- Homework 06 and Homework 07 each have ten solutions awaiting work.
- The title page's publisher field still reads `XYZ Maths`. This is preserved
  rather than replaced with an invented publisher identity.
- Historical evidence limits in `history-inventory.md` remain applicable.

The pass improves the current manuscript. It does not certify unfinished
sections as a completed textbook or claim that every historical priority
question has been settled.

## Validation

- `make check` succeeds for the book, the standalone formula sheet, and all
  seven homework handouts from both supported working directories.
- The book has 203 pages. Every page was scanned for layout, with enlarged
  inspections of changed passages, diagrams, and suspected collisions. The
  edited handouts and both standalone formula-sheet pages were also inspected.
- The standalone formula sheet remains two US Letter pages for duplex printing.
- All 62 placement-map rows agree with the containing topic files and appendix
  order. Each appendix entry repeats the complete shared problem before its
  shared solution. Handout question order and nested editor root directives
  remain correct.
- All 124 exercise and solution destinations resolve and have local links to
  their counterparts. The 83 literal figure labels in the included manuscript
  have automatic body references. Portrait references retain their shared
  helper conventions. All 100 formal-result inventory anchors match the source.
- The root and TeXShop builds produce matching handout text and page counts.
  The settled book log has no overfull boxes, unresolved references or
  citations, or duplicate labels or destinations.
- Existing package and font-substitution warnings remain. Documents without
  citations also retain generic empty-bibliography rerun warnings, even after
  Biber processes their empty citation lists. These do not identify a missing
  numbered reference or citation key.
- `git diff --check` passes.
