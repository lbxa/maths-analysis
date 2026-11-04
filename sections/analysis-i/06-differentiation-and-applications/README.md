# Differentiation and its applications

This chapter follows the six syllabus sections. The eight photographs in
`images/LEC06/` supply differentiation, mean-value methods, Taylor's
statement, L'Hopital's rule, and the inverse derivative calculation. The
first photo is headed Lecture 7; retain the source identity without changing
the mathematical chapter order. Convexity remains reserved. The Taylor
section retains the earlier factorial-series application.

## Changelog

### 2026-10-30

- Add pending editorial proofs of Cauchy's mean value theorem and Taylor's
  theorem at the author's request. A single auxiliary function supplies the
  common mean-value point without dividing by endpoint differences; repeated
  Rolle applications give Taylor's remainder for either sign of `x-a` and
  for `n=0`, without using integration. These proofs complete statements
  whose source notes supplied no proof; the infinity-quotient rule remains
  stated without proof.
- Illustrate the first-principles derivative with the actual graph x^2/2
  at x=1, using equal axis units, a rise/run triangle, and secants tending
  to its tangent. Keep the cancellation at nonzero h before the limit and
  state that the same slope is obtained from both sides.
  Align the slope formulas below the two panels and explain line styles
  in the caption, avoiding a separate cramped legend and motion arrow.
- Cite the Waste Book's entry dated 20 May 1665, folio 47r, for Newton's
  expansion, cancellation, and vanishing increment. Treat this as evidence
  of calculus in development, without attributing modern limit notation or
  an unsupported psychological description to him. The normalized primary
  transcription is the quoted source; manuscript image access was unavailable.
- The author's HW06 topic-coverage request supplies pending exp/log
  constructions in §8.6. Retain the syllabus's differentiation-first order
  and its explicit forward reference; those properties are now established
  later in the book rather than left unproved assumptions.
- Import all eight photographs, `IMG_9350`--`IMG_9357`, after conversion with
  `scripts/jpeg.sh`. Keep direct source material in normal type and mark
  corrected formulas, added hypotheses, and short supporting arguments
  pending review. Preserve the supplied MVT and zero-quotient proofs;
  Cauchy's extended theorem, Taylor, and the infinity-quotient rule were
  initially stated without supplied proofs. The author's later proof request
  supplies the first two as pending editorial additions above.
- Keep the six syllabus sections and place the inverse calculation in §6.6,
  with an explicit forward reference from roots and logarithms. The pending
  difference-quotient proof establishes inverse differentiability before
  invoking the chain rule. The real-power calculation uses exp and log,
  since rational approximation alone cannot justify limits of derivatives.
- Correct the first-order residual to little-o, the rational-power algebra,
  the exponential-tail index, the common-point MVT argument, and the reversed
  reciprocal quotient. Preserve the incomplete subgradient aside in source
  comments instead of asserting ordinary differentiability of absolute value.
  Add the short unfinished monotonicity calculation as pending working.
- Redraw local extrema, Rolle/MVT geometry, and average height in shared
  thin-stroke TikZ. Treat the integral interpretation as a conditional
  forward use of the fundamental theorem, not the MVT proof. No preceding
  uniform-series, equicontinuity, or exp/log-construction lecture is present
  in this folder; do not invent that material to fill the gap.

### 2026-10-28

- Constrain the rendered sample paragraph in the mean-value section to the
  main text column so it cannot overlap the enlarged Leibniz portrait.
  Mathematical course content remains reserved.

### 2026-10-27

- Add pending historical margin context and compact credited portraits at the substantive topic treatments. Keep the syllabus order and mathematical statement/proof status; see the [book-wide history inventory](../../../docs/history-inventory.md) and [portrait ledger](../../../figures/portraits/README.md).

### 2026-10-03

- Retain the Taylor-remainder identification of the factorial series with exp(1) in the Taylor section, following an explicit theorem statement. HW02 Q5 uses the elementary series definition of e, so a first-three-weeks exercise does not require differentiation or Taylor's theorem.
