---
id: kg1qlvg4zn5okc09eso6uv0
title: Others
desc: ''
updated: 1647631718086
created: 1647631571288
---

## Landau symbols

### Definition of Landau symbols

let there be two functions $f,g$ defined on $\mathbb{D} \rightarrow \mathbb{W}$. Let $g(n) > 0$ for sufficiently large $n$ then:

| Notation                   | Formal Definition                                                                                   | Limit Definition                                                                                            |
| -------------------------- | --------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| $f(n) = \mathcal{O}(g(n))$ | $\exists k >0 \exists n_0 \forall n>n_0: \| f(n) \| \leq k\cdot g(n)$                               | $\limsup \displaystyle{\lim\_{n\rightarrow\infty}}s\_{n\rightarrow \infty} \frac{\| f(n) \| }{g(n)}<\infty$ |
| $f(n) = \Theta(g(n))$      | $\exists k_1,k_2 > 0 \exists n_0 \forall n>n_0: k_1\cdot g(n) \leq f(n) \leq k_2\cdot g(n)$         | $f(n)=\mathcal{O}(g(n))$ and $f(n)=\Omega(g(n))$                                                            |
| $f(n) = \Omega(g(n))$      | $\exists k >0 \exists n_0 \forall n>n_0: \| f(n) \| \geq k\cdot g(n)$                               | $\liminf \displaystyle{\lim\_{n\rightarrow\infty}}s\_{n\rightarrow \infty} \frac{\| f(n) \|}{g(n)}>0$       |
| $f(n) = o(g(n))$           | $\forall k >0 \exists n_0 \forall n>n_0: \| f(n) \| < k\cdot g(n)$                                  | $\lim \displaystyle{\lim\_{n\rightarrow\infty}}s\_{n\rightarrow \infty} \frac{\| f(n) \|}{g(n)}=0$          |
| $f(n) \sim  g(n)$          | $\forall \epsilon > 0 \exists n_0 \forall n>n_0: \left \|  \frac{f(n)}{g(n)}-1\right \| < \epsilon$ | $\lim \displaystyle{\lim\_{n\rightarrow\infty}}s_{n\rightarrow \infty} \frac{f(n)}{g(n)}=1$                 |
| $f(n) = \omega(g(n))$      | $\forall k >0 \exists n_0 \forall n>n_0: \| f(n)\| > k\cdot g(n)$                                   | $\lim \displaystyle{\lim\_{n\rightarrow\infty}}s\_{n\rightarrow \infty} \frac{\| f(n)\| }{g(n)}=\infty$     |

We can say:

- $f(n) = \mathcal{O}(g(n))$: $f$ is in Big O $g$, iff $|f|$ is bounded \textit{above} $g$ (up to a constant factor) asymptotically.
- $f(n) = \Theta(g(n)):$ $f$ is in Big Theta $g$, iff $f$ is bounded both \textit{above and below} by $g$ asymptotically.
- $f(n) = \Omega(g(n)):$ $f$ is in Big Omega $g$, iff $f$ is bounded \textit{below} $g$ asymptotically.

We also say:

- $f(n) = o(g(n)):$ $f$ is small O $g$, iff $f$ \textit{is dominated} by $g$ asymptotically.
- $f(n) \sim  g(n):$ $f$ is on the order of $g$, iff $f$ is \textit{equal} to $g$ asymptotically.
- $f(n) = \omega(g(n)):$ $f$ is small Omega $g$, iff $f$ \textit{dominates} $g$ asymptotically.

### Landau calculation rules

We can derive the following Calculation rules:

- "Small $\Rightarrow$ Big": $f(n) = o(g(n)) \Rightarrow f(n) = \mathcal{O}(g(n))$ and equally $(\sim\Rightarrow\Theta), (\omega\Rightarrow\Omega)$
- Product: $f_1 = \mathcal{O}(g_1)$ and $f_2 = \mathcal{O}(g_2)\Rightarrow f_1\cdot f_2= \mathcal{O}(g_1\cdot g_2)$ and equally for $\{\Theta,\Omega,o,\sim,\omega\}$
- Sum: $f_1 = \mathcal{O}(g_1)$ and $f_2 = \mathcal{O}(g_2)\Rightarrow f_1+f_2= \mathcal{O}(max(g_1,g_2))$ same for $o$. For $\Omega,\omega$ we have $min$ instead of $max$!
- Multiplication by const: let $k\neq 0$ const. Then $\mathcal{O}(|k|\cdot g) = \mathcal{O}(g)$ and same for $\{\Theta,\Omega,o,\sim,\omega\}$

### Landau symbols on $\R^n$

Let $f,g$ defined on some subset of $R^n$ We say: $f(x) \text{ is } \mathcal{O} \text{ as } x\rightarrow \infty$ if and only if $\exists M\exists C \text{ such that for all } x \text { with } x_i\geq M \text{ for some } i, |f(x)| \leq C|g(x)|$

Equivalently, the condition that $x_{i}\geq M$ for some $i$ can be replaced with the condition that $\|\mathbf{x} \|_{\infty }\geq M$, where $\|\mathbf {x} \|$ denotes the Chebyshev norm.

### Orders of common functions

Here is a list of classes of functions that are commonly encountered when analyzing the running time of an algorithm. In
each case, c is a positive constant and n increases without bound. The slower-growing functions are generally listed first.

| Notation                                    | Name                                 | Example |
| ------------------------------------------- | ------------------------------------ | ------- |
| $\mathcal{O}(1)$                            | constant                             |         |
| $\mathcal{O}(\log\log n)$                   | double logarithmic                   |         |
| $\mathcal{O}(\log n)$                       | logarithmic                          |         |
| $\mathcal{O}((log n)^c), c>0$               | polylogarithmic                      |         |
| $\mathcal{O}(n^c), 0<c<1$                   | fractional power                     |         |
| $\mathcal{O}(n)$                            | linear                               |         |
| $\mathcal{O}(n\log* n)$                     | n log-star n                         |         |
| $\mathcal{O}(n\log n)=\mathcal{O}(\log n!)$ | linearithmic, loglinear, quasilinear |         |
| $\mathcal{O}(n^2)$                          | quadratic                            |         |
| $\mathcal{O}(n^c)$                          | polynomial or algebraic              |         |
| $\mathcal{O}(L_n[a,c])$                     | L-notation or sub-exponential        |         |
| $\mathcal{O}(c^n), c>1$                     | exponential                          |         |
| $\mathcal{O}(n!)$                           | factorial                            |         |

## Taylor's theorem

### Definition of Taylor's theorem

In calculus, Taylor's theorem gives an approximation of a $k$-times differentiable function around a given point by a polynomial of degree $k$, called the $k$th-order Taylor polynomial.

Let $f:(a,b)\rightarrow\R$ be $(m+1)$-times continuous differentiable and let $x,x_0\in (a,b)$ with $x_0 \neq x$. Then it holds:

$$
\begin{align*}
f(x) = P_m(x)+R_m(x)
\end{align*}
$$

with Taylor-approximation

$$
\begin{align*}
P_m(x) = f(x_0) + f'(x_0)(x-x_0)+\frac{f''(x_0)}{2}(x-x_0)^2+...+\frac{f^{(m)(x_0)}}{m!}(x-x_0)^m
\end{align*}
$$

and remainder term

$$
\begin{align*}
R_m(x)=\frac{f^{(m+1)}(\xi)}{(m+1)!}(x-x_0)^{m+1} \in \mathcal{O}(x^{m+1})
\end{align*}
$$

for a $\xi$ strictly between $x$ and $x_0$ e.g. $\xi\in (x,x_0)$ or $\xi\in (x_0,x)$

The first 10 faculty numbers are:

| n   |   1 |   2 |   3 |   4 |   5 |   6 |    7 |     8 |      9 |      10 |
| --- | --: | --: | --: | --: | --: | --: | ---: | ----: | -----: | ------: |
| n!  |   1 |   2 |   6 |  24 | 120 | 720 | 5040 | 40320 | 362880 | 3628800 |

### Taylor's theorem example

Task: Find approximation of $f(x)=e^x$ on the interval $[-1,1]$ while ensuring that the error in the approximation is no more than $10^{-5}$ while assuming:

$$
\begin{align*}
   e^0 = 1, &&  \frac{d}{dx}e^x=e^x, && e^x>0, && x\in\R.
 \end{align*}
$$

Solution: From these properties it follows that $f(k)(x) = e^x$ for all $k$, and in particular, $f(k)(0) = 1$. Hence the $k$-th order Taylor polynomial of $f$ at $0$ and its remainder term in the Lagrange form are given by

$$
\begin{align*}
   P_k(x) = 1 + x +  \frac{x^2}{2!}+...+ \frac{x^k}{k!}, && R_k(x)= \frac{e^\xi}{(k+1)!}x^{(k+1)},
 \end{align*}
$$

where $\xi\in (0,x)$

Note that $\displaystyle{\lim_{k\rightarrow\infty}}  P_k(x) = e^x$ defines the exponential series
