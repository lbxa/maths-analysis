# Sequences and series of functions

The six syllabus sections retain their titles and order. Week 4 supplies
the scalar examples in the final section, Power series. Week 5 supplies
pointwise and uniform convergence and continuity of a uniform limit.
The author's HW06 coverage request authorises pending treatments of
function series, the normed space C[a,b], equicontinuity, the uniform
Cauchy criterion, the M-test, and exponential/logarithmic functions.
Uniform convergence and integration remains reserved.

## Homework 06 topic coverage

All additions made to complete this list remain pending author review.
This is a topic audit; the ten shared HW06 solution files still await
solutions. Section titles and exercise order remain unchanged.

| Assessed topic | Book treatment | Coverage |
| --- | --- | --- |
| Uniform convergence of continuous functions | [§8.3 Uniform convergence](03-uniform-convergence.tex) | Quantifiers, pointwise distinction, moving-input examples, and proof that uniform limits preserve continuity. |
| Equicontinuity of a sequence | [§8.3 Equicontinuity](03-uniform-convergence.tex) | Shared-delta definition, examples, uniform convergence implying equicontinuity, and a proof of a common modulus on a closed bounded interval. |
| C[a,b] as a normed space | [§8.3 The normed space C[a,b]](03-uniform-convergence.tex) | Pointwise vector operations, norm axioms and their verification, supremum distance, and equivalence with uniform convergence. |
| Uniform convergence and the uniformly Cauchy property | [§8.4 Cauchy criterion for uniform convergence](04-cauchy-criterion-for-uniform-convergence.tex) | Both definitions, both directions of the equivalence, and completeness of C[a,b] in the supremum norm. |
| Absolute and uniform convergence of function series | [§8.2 Series of functions](02-series-of-functions.tex), [§8.4](04-cauchy-criterion-for-uniform-convergence.tex) | Partial sums, absolute convergence at each input, the uniform tail criterion, and the distinction between convergence of terms and of their series. |
| Majorants and the Weierstrass M-test | [§8.4 The Weierstrass majorant test](04-cauchy-criterion-for-uniform-convergence.tex) | A numerical summable bound independent of the input, proof of absolute and uniform convergence, a uniform remainder bound, and a geometric example. |
| Radius of convergence | [§8.6 Power series](06-power-series.tex) | Existence proof, root and ratio formulas, separate endpoint tests, and proof of absolute/uniform convergence on smaller closed intervals and continuity of the sum. |
| Cauchy product of two series | [§4.4 The Cauchy product](../04-infinite-series-of-numbers/04-conditional-convergence.tex) | Diagonal coefficient definition, proof of the absolutely convergent product theorem, and a convergent-factor counterexample when absolute convergence is absent. |
| Algebraic and transcendental functions | [§8.6 Algebraic and transcendental functions](06-power-series.tex) | Polynomial-relation definition over real coefficients, polynomial/rational/root examples, distinction from algebraic numbers over Q, and proofs for exp and log on their full domains. |
| Exponential and logarithm and their properties | [§8.6 Exponential and logarithmic properties](06-power-series.tex) | Series construction, continuity, addition law from Cauchy products, positivity, range, monotonicity, inverse continuity, endpoint limits, real powers, and exponent/logarithm laws. |
| Differentiation and derivative | [§6.1 Differentiation](../06-differentiation-and-applications/01-differentiation.tex) | Difference quotients, first-order approximation, one-sided derivatives, stated differentiation rules, and worked power/exponential/logarithmic derivatives. |
| Differentiability and continuity | [§6.1 Differentiation](../06-differentiation-and-applications/01-differentiation.tex) | Proof that differentiability implies continuity, with absolute value at zero showing the converse fails. |

## Changelog

### 2026-10-30

- Complete the HW06 topic list at the author's explicit request, adding
  pending theory rather than claiming that an absent source was transcribed.
  This supersedes the earlier restriction to minimal exercise prerequisites.
  Keep integration reserved and retain every original exercise identity,
  handout order, and appendix order.
- Derive uniform convergence from the uniformly Cauchy property using
  completeness of R; derive the M-test from the uniform tail criterion.
  Use compactness only for the common equicontinuity modulus, and verify
  the supremum-norm axioms before using the function-space terminology.
- Construct exp from its absolutely convergent series, use the Cauchy
  product and finite binomial theorem for its addition law, then establish
  positivity, strict increase, range, and its continuous inverse log.
  Define real powers through exp/log and prove their agreement with
  rational powers. This closes the earlier conditional background in §6.1.
- Define algebraic functions by polynomial relations over R, keeping this
  distinct from algebraic numbers over Q. Prove exp's transcendence by
  its growth against polynomial coefficients and obtain log's by inversion;
  neither proof assumes the uncompleted HW06 decay solution.
- Place HW06 Q9, Q7, and Q8 after the existing uniform-limit material in
  §8.3. Add only pending C[a,b]/sup-norm and equicontinuity definitions needed
  to read the questions. Q9's compact continuous-function context is essential;
  Q7 explicitly refers forward to its prescribed exponential-decay hint.
- Place HW06 Q1, Q2, Q4, Q5, Q3, and Q6 after the exponential-series example
  in §8.6, then retain the endpoint family and HW04 Q7 before HW06 Q10.
  Preserve all existing exercise identities and align appendix order with
  these inputs. Every new solution remains awaiting the author's work.
- The supplied LEC06 folder contains differentiation photographs headed
  Lecture 7, not the earlier uniform-series lecture listed in HW06's source
  summary. The initial import therefore added only minimal prerequisites.
  The later explicit topic-coverage request authorises the pending editorial
  completion recorded above; the missing original source remains missing.

### 2026-10-27

- Add pending historical margin context and compact credited portraits at the substantive topic treatments. Keep the syllabus order and mathematical statement/proof status; see the [book-wide history inventory](../../../docs/history-inventory.md) and [portrait ledger](../../../figures/portraits/README.md).

### 2026-10-15

- Place Homework 05 Q9 at the end of §8.3, after the pointwise/uniform
  distinction and moving-input example. Its two parts need the uniform
  quantifiers, so do not place the complete question in §8.1. Keep
  Homework 04 Q7 in §8.6 and update its appendix order to follow the new
  exercises, without changing its identity or approved solution.
- Transcribe `LEC05/IMG_9260` and `IMG_9261` into §§8.1 and 8.3, retaining
  every example. Explain the dependence of the pointwise index on the input
  and the single index required for uniform convergence.
- Plot truncated powers, truncated roots, and reciprocal powers in TikZ.
  Preserve the source's positive domain for the root example; mark its
  continuous extension to zero as pending. Distinguish open endpoints from
  included values in all three limit graphs.
- Preserve the uniform-limit theorem and its three-term proof. Mark the
  omitted middle difference, the choice of delta after fixing an index,
  and a moving-input illustration of nonuniform convergence as pending.
- Remove unrelated Tufte specimens from §§8.1–8.5 while retaining all syllabus
  headings and the existing §8.6 power-series text and homework placement.

### 2026-10-09

- Place Homework 04 Q7 at the end of §8.6, after radius examples,
  ratio and root tests, and separate endpoint tests are available. Keep
  the source's unrestricted integer exponent, including zero and negative
  values, and its request for absolute convergence. The author's shared
  root-test solution now includes approved corrections for negative
  exponents, the divergence threshold, and the endpoint p-series test.
- Replace the power-series specimen with the geometric, exponential,
  and `sum x^n/n^s` examples from `LEC04/IMG_9238` and `IMG_9240` through
  `IMG_9242`. Refer back to sequence and series tests before applying them.
- Introduce radius and separate endpoint tests through the supplied
  examples. The logical review supplies a general existence proof using
  bounded terms at a known convergence point and geometric comparison,
  then the supremum of absolute-convergence radii. This also handles
  radius zero and infinite radius without assuming a later root formula
  or uniform-convergence theorem. The exponential identification remains
  stated; the ratio argument proves convergence for each fixed real input.
- Correct the visible final claim of convergence on `[-1,1]` by giving
  its necessary condition `s>1`, along with the other endpoint cases.
  Link the left-endpoint argument to the worked alternating-series
  example in Chapter 4. Do not infer
  writing hidden by the hand in the final photograph.
