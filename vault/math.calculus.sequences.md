---
id: kmq8r01g7dpl6gpio0ksa95
title: Sequences
desc: ''
updated: 1647631801411
created: 1647631785838
---

## Sequence

### Definition of a Sequence

Let $X\neq \emptyset$. A sequence in $X$ or and $X$-valued sequence is a function:

$$
\begin{align*}
   f:\N\rightarrow X, \\; n\mapsto f(n)\in X
\end{align*}
$$

We set $a_n:=f(n)$ and call $a_n$ n-th sequence element. The sequence then is $\left(a_n\right)_{n\in\N}$

### Formation law of a sequence

We can well define any sequence by:

- naming of all sequence elements (only for finite sequences)
- functional equation, series
- recursion, algorithm

### Sequence categorization

We can categorize sequences by following conditions:

| Category      | Condition                                                 | Example                                 |
| ------------- | --------------------------------------------------------- | --------------------------------------- |
| alternating   | $a_n < 0 \Rightarrow a_{n+1}>0\;\forall n$                | $a_n=(-1)^n$                            |
| constant      | $a_n = a_{n+1} \;\forall n$                               | $a_n=1$                                 |
| stationary    | $a_n = a_{n+1}$ for almost all $n$                        | 1, 2, 3, 3, 3, 3, ...                   |
| zero sequence | $a_n\rightarrow 0 \; (n\rightarrow\infty)$                | $a_n=1/n$                               |
| terminating   | stationary zero sequence                                  | 3, 2, 1, 2, 0, 0, 0, ...                |
| periodic      | $\left(a_n\right)_n$ is repetition of finite subsequence. | $a_n = sin((n/2)\cdot\pi)$ (4-periodic) |

### Sequence types

We can further divide sequences in the following types

| Type                | building rule        | Example                 |
| ------------------- | -------------------- | ----------------------- |
| arithmetic sequence | $a_k = a_0+k\cdot d$ | $(a_n)_n=2,4,6,...$     |
| potency sequence    | $a_k=k^s$            | $0,1,8,27,...(a_k=k^3)$ |
| geometric sequence  | $a_k = a_0\cdot q^k$ | $1,2,4,8,16,32,64,...$  |

### Sequence equivalence

> Two sequences $(a_n)_n$ and $(b_n)_n$ are equivalent if and only if $(a_n-b_n)_n$ is a zero sequence:

### Examples of common sequences

here are further Examples of common sequences with name. More can be found on [oeis.org](http://oeis.org/)

| Name                |                                                                             $a_n$                                                                              | $\lim_{n\rightarrow\infty}$   |
| ------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------: | :---------------------------- |
| harmonic            |                                                                         $ \frac{1}{n}$                                                                         | 0                             |
| exponential         |                                                                $\left(1+ \frac{z}{n}^n\right)$                                                                 | $e^z$                         |
| root                |                                                                         $\sqrt[n]{n}$                                                                          | 1                             |
| ln                  |                                                               $n\left(a^{\frac{1}{n}}-1\right)$                                                                | $\ln(a)\;$ iff $a > 0\in \R)$ |
| euler mascheronie   |                                                     $\left(1+ \frac{1}{2}+...+ \frac{1}{n}-\ln(n)\right)$                                                      | $\gamma$                      |
| fibonacci explicit  | $ \frac{1}{\sqrt{5}}\cdot\left(\left( \frac{1+\sqrt{5}}{2}\right)^n-\left( \frac{1-\sqrt{5}}{2}\right)^n\right) = \frac{\Phi^n-\bar{\Phi}^n}{\Phi-\bar{\Phi}}$ | $+\infty$                     |
| fibonacci recursive |                                                               $a_{n-2}+a_{n-1},\; a_0=0, a_1=1$                                                                | $+\infty$                     |
| heron's method      |                                                  $ \frac{1}{2}\left(a\_{n-1}+ \frac{x}{a_n}\right),\; a_0>0$                                                   | $\sqrt{x}$                    |

### Vector space of of $\R$-Sequences

We can define a vector space defined on all real sequences. This vector space will include the following subspaces:

Zero sequences $\subsetneqq$ Convergent sequences $\subsetneqq$ Bounded sequences $\subsetneqq$ Real sequences

## Convergence of Sequences

### Definition of convergence for a real sequence (epsilon criterion)

A real valued sequences $(a_n)_n$ converges towards some $a\in\R$ iff

$$
\begin{align*}
 ​    \forall \epsilon>0 \exists k\in\N : \forall n \geq k \text{ follows } |a_n-a|<\epsilon
\end{align*}
$$

We call the number $a$ the limit of the sequence and write $\lim_{n\rightarrow \infty}a_n=a$ or $a_n\rightarrow a (\text{for } n\rightarrow\infty)$.

If the limit exists we call the sequence convergent otherwise the sequences is divergent.

### Improper convergence

A sequence $(a_n)_n$ converges improper (div. determined) towards

$+\infty(-\infty)$, iff $\forall R>(<)0\exists K\in\N:a_n>(<)R\forall n\geq K$

Note that this definition is not the same as divergence or convergence: e.g. the fibonacci sequence is improperly convergent

<!-- \newcommand{ \displaystyle{\lim\_{n\rightarrow\infty}}}{\displaystyle{\lim\_{n\rightarrow\infty}}} $ -->

### Calculation rules for limits

In most cases we can conclude convergence, divergence or improper convergence from these following rules

| Rule name                 | Rule                                                                                                                                                                                                                                      |
| ------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Product                   | $ \displaystyle{\lim\_{n\rightarrow\infty}}(a_n\cdot b_n)=\left( \displaystyle{\lim\_{n\rightarrow\infty}} a_n\right)\cdot\left( \displaystyle{\lim\_{n\rightarrow\infty}} b_n\right) $                                                   |
| Quotient                  | $ \displaystyle{\lim\_{n\rightarrow\infty}}\left( \frac{a_n}{b_n}\right)= \frac{ \displaystyle{\lim\_{n\rightarrow\infty}} a_n}{ \displaystyle{\lim\_{n\rightarrow\infty}} b_n} if \displaystyle{\lim\_{n\rightarrow\infty}} b_n \neq 0 $ |
| Potency                   | $ \displaystyle{\lim\_{n\rightarrow\infty}} a_n^p = \left[ \displaystyle{\lim\_{n\rightarrow\infty}} a_n\right]^p $                                                                                                                       |
| Sum                       | $ \displaystyle{\lim\_{n\rightarrow\infty}}(a_n\pm b_n)= \displaystyle{\lim\_{n\rightarrow\infty}} a_n\pm \displaystyle{\lim\_{n\rightarrow\infty}} b_n $                                                                                 |
| Multiplication with const | $ \displaystyle{\lim\_{n\rightarrow\infty}} ca_n = c\cdot \displaystyle{\lim\_{n\rightarrow\infty}} a_n $                                                                                                                                 |
| Reciprocal                | $ \displaystyle{\lim\_{n\rightarrow\infty}} a_n = 0 \Leftrightarrow \displaystyle{\lim\_{n\rightarrow\infty}} \frac{1}{a_n} = +\infty(-\infty),$ if $a_n>(<)0$ for nearly all $n $                                                        |
| Order                     | $ a_n\leq b_n$ for nearly all $n\Rightarrow \displaystyle{\lim\_{n\rightarrow\infty}} a_n \leq \displaystyle{\lim\_{n\rightarrow\infty}} b_n $                                                                                            |
| **Sandwich** Lemma        | $ a_n\leq c_n\leq b_n$ for nearly all $n, \displaystyle{\lim\_{n\rightarrow\infty}} a_n = \displaystyle{\lim\_{n\rightarrow\infty}} b_n = L \Rightarrow \displaystyle{\lim\_{n\rightarrow\infty}} c_n = L $                               |

We can categorize sequences by following conditions:

| Category      | Condition                                                 | Example                                 |
| ------------- | --------------------------------------------------------- | --------------------------------------- |
| alternating   | $a_n < 0 \Rightarrow a_{n+1}>0\;\forall n$                | $a_n=(-1)^n$                            |
| constant      | $a_n = a_{n+1} \;\forall n$                               | $a_n=1$                                 |
| stationary    | $a_n = a_{n+1}$ for almost all $n$                        | 1, 2, 3, 3, 3, 3, ...                   |
| zero sequence | $a_n\rightarrow 0 \; (n\rightarrow\infty)$                | $a_n=1/n$                               |
| terminating   | stationary zero sequence                                  | 3, 2, 1, 2, 0, 0, 0, ...                |
| periodic      | $\left(a_n\right)_n$ is repetition of finite subsequence. | $a_n = sin((n/2)\cdot\pi)$ (4-periodic) |

