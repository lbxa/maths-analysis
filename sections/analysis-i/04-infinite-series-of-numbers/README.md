# Infinite series of numbers

Week 4 introduces partial sums, geometric and harmonic series, absolute
convergence, comparison, and the ratio and root tests. The four syllabus
sections remain in their original order.

## Changelog

### 2026-10-09

- Derive the Cauchy tail sum by splitting the longer partial sum at
  index n before cancelling its shared prefix. Explain the first index
  n+1, the last index m, and the one-term case so the index arithmetic
  is visible rather than left implicit for the sake of brevity.
- Place Homework 04 Q3 in §4.1 after the Cauchy criterion and basic
  series examples. Place Q4--Q5 in §4.2 after comparison and the p-series,
  so the arbitrary positive real shift can be estimated and the lower
  and upper limits can supply eventual comparisons. Place Q6 after both
  ratio and root tests, retaining its two divergence claims as exercises.
  Q3 has an approved audited solution retaining the author's two pairings
  and accounting for both tail parities. Q4--Q6 now have transcribed
  author solutions with approved edits to finite-tail comparisons
  and the divergence arguments, shared with the handout and appendix
  in normal text colour.
- Replace specimens using `LEC04/IMG_9234` through `IMG_9241`.
  Put the Cauchy criterion and necessary term condition before examples,
  then introduce absolute convergence before using geometric majorants.
- Preserve the dyadic proof for the p-series and the harmonic block
  estimate. Correct tail indices and use non-strict inequalities where
  the first block can attain equality.
- Make the real-exponent prerequisite explicit. Chapter 1 constructs
  rational powers; the arguments for irrational exponents assume their
  existence and usual order and exponent laws, rather than establishing
  that construction through the series tests.
- In the ratio and root proofs choose `limsup < rho < 1`. The source's
  `limsup - epsilon` would not be an eventual upper bound. The root test
  retains the convergence criterion supplied in the lecture.
- Present the alternating-series question as a worked example. Its even
  and odd partial sums are monotone, bounded, and separated by a term
  tending to zero, so the existing sequence tools suffice without a later
  alternating-series theorem. The power-series endpoint discussion links
  to this proof. Retain the question about Gabriel's horn as an optional
  reminder for integration. No assignment was fetched or imported.
  Dirichlet's test is reserved because it does not appear in these pages.
