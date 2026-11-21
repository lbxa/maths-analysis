# Mathematical Analysis I - Homework No. 8

**Course:** MA-GY-6213  
**Due:** Friday 11/13/2026

## 1.

**(a)** Obtain the Taylor series for the functions $\sin x$ and $\cos x$ around $x=0$ and explain their convergence in the entire real interval $(-\infty,\infty)$.

**(b)** Use the formal definition

$$
e^{ix}=\sum_{n=0}^{\infty}\frac{(ix)^n}{n!}
$$

and (a) to derive (or "discover") Euler's formula

$$
e^{ix}=\cos x+i\sin x.
$$

## 2.

Consider the function $f(x)=\ln(1+x)$ defined in $-1<x<\infty$.

**(a)** Obtain its Taylor polynomial $P_n(x)$ of order $n\ge1$ about $x=0$ such that its Lagrange remainder involves $f^{(n+1)}$.

**(b)** Find the interval which ensures the convergence

$$
f(x)=\lim_{n\to\infty}P_n(x).
$$

**(c)** Use your results to obtain the Taylor series for the function $g(x)=\ln x$ about $x=1$.

**Hint:** $g(x)=f(x-1)$.

## 3.

Let $f$ be an $n$-time differentiable function over an open interval $I$. Show that, if there is a point $a\in I$ such that

$$
f(a)=f'(a)=\cdots=f^{(n-1)}(a)=0,
$$

then $f$ is identically zero if $f^{(n)}=0$ in $I$.

## 4.

Let $f$ be a twice differentiable function over an open interval $I$ satisfying $f''(x)\ge0$ for $x\in I$. Establish the general inequality

$$
f(p_1x_1+\cdots+p_nx_n)
\le p_1f(x_1)+\cdots+p_nf(x_n),
$$

where

$$
p_1,\ldots,p_n\in[0,1],\qquad
p_1+\cdots+p_n=1,\qquad
x_1,\ldots,x_n\in I.
$$

## 5.

Use Problem 4 and the function $e^s$ to establish the generalized Young's inequality

$$
x_1\cdots x_n
\le \frac{x_1^{p_1}}{p_1}+\cdots+\frac{x_n^{p_n}}{p_n},
$$

where

$$
x_1,\ldots,x_n>0,\qquad
p_1,\ldots,p_n>1,\qquad
\frac1{p_1}+\cdots+\frac1{p_n}=1.
$$

## 6.

Use Problem 5 to establish the generalized AM-GM inequality

$$
(a_1\cdots a_n)^{1/n}
\le\frac{a_1+\cdots+a_n}{n},\qquad
a_1,\ldots,a_n\ge0.
$$

## 7.

Consider the function

$$
f(x)=\frac1{1+x},\qquad x\in[0,1],
$$

and use $P_n(x)$ to denote the $n$th degree Bernstein polynomial of $f(x)$. Obtain $P_4(x)$.

## 8.

For $f(x)=x^2$ over $[0,1]$, obtain its Bernstein polynomial $P_n(x)$ explicitly and use it to find the absolute error

$$
E_n(x)=|f(x)-P_n(x)|.
$$

Show that $E_n(x)\to0$ as $n\to\infty$ uniformly.

**Hint:** The probability identities we reviewed in class,

$$
\sum_{k=0}^{n}\frac{k}{n}\binom{n}{k}x^k(1-x)^{n-k}=x,
$$

$$
\sum_{k=0}^{n}\left(\frac{k}{n}-x\right)^2
\binom{n}{k}x^k(1-x)^{n-k}
=\frac{x(1-x)}{n},\qquad x\in[0,1],
$$

will be useful.

## Topics covered in Week 9

Taylor's theorem, Lagrange remainder, convex functions, convex inequalities, Young's inequality, Jensen's inequality, Taylor's series, analytic functions, Bernstein's polynomials, the Weierstrass polynomial approximation theorem.

## Book recommendation

G. Pólya and G. Szegö: _Problems and Theorems in Analysis I_, Springer-Verlag, 1983.
