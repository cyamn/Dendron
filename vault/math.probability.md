---
id: imupuv0w5znenl8aon5atlb
title: Probability theory and statistics
desc: ''
updated: 1651141601129
created: 1651138157538
---

## Discrete probability distributions

Consider a chance experiment with outcomes in a set $\Omega$ where $\Omega$ is finite or countable infinite, i.e. of the form
$$
\Omega= \{\omega_1,...,\omega_n\} \;\kern 10pt\text{or}\kern 10pt \Omega=\{\omega_1,\omega_2,...\}
$$
The corresponding probabilities can be described by a real-valued function
$$
\begin{align*}
\text{Prob: }&\Omega\rightarrow[0,1]\\
&\omega\mapsto \text{Prob[$\omega$]}
\end{align*}
$$
where the values Prob[$\omega$] add up to $1$. We refer to such a function as _discrete probability distribution_ and to the pair $(\Omega,\text{Prob})$ as _discrete probability space_.

## Events

Subsets of $\Omega$ are called _events_, a singleton subset of the form $\{\omega\}$ is identified with member $\omega$ of $\Omega$ and is called a _basic_ or _atomic_ event.

The function Prob can be extended to all events $E$ by letting
$$
\text{Prob}[E] = \sum_{\omega\in E}^{}\text{Prob}[\omega].
$$

## Uniform distribution

The _uniform distribution_ or _uniform measure_ on a finite set $\Omega$ is the probability distribution Prob that assigns to all $\omega\in\Omega$ the same probability Prob[$\omega$] $=\frac{1}{|\Omega|}$. On a countable infinite set there is no uniform distribution.

Examples:

- The throw of a fair die is modelled by the _uniform distribution_ on $\Omega=\{1,2,3,4,5,6\}$
- the toss of a fair coin is modelled by the _uniform distribution_ on $\Omega=\{0,1\}$
- A sequence of $n$ tosses of a fair coin is modelled by the _uniform distribution_ on the set $\Omega=\{0,1\}^n$ of binary words of length $n$.
  - In the case $n = 2$, the atomic events are $00, 01, 10$ and $11$, and they all have equal probability $\frac{1}{4}$.

## Random variables

With a probabiliy space $(\Omega, \text{Prob})$ understood, a random variable is a function from $\Omega$ to the set $\R$ of real numbers.

Let $(\Omega, \text{Prob})$ be a [[discrete probability space|math.probability#discrete-probability-distributions]] and let $X:\Omega \rightarrow\R$ be a random variable.
The range $\text{range}(X)=\{X(\omega) :\omega\in\Omega\}$ of $X$ is a countable subset of the real numbers.
Consequently, the random variable $X$ determines a discrete probability distribution
$$
\begin{align*}
\text{Prob$_X$: }&\Omega_X\rightarrow[0,1]\\
&r\mapsto \sum_{\{\omega\in\Omega: X(\omega=r)\}}^{}\text{Prob[$\omega$]}
\end{align*}
$$
where $\Omega_X$ is the range of $X$. The function $\text{Prob}_X$ is called the _distribution_ of $X$.

We write $\text{Prob}[X = r ]$ instead of $\text{Prob}_X[r]$, and also use notation such as
$\text{Prob}[X\geq r ]$, $\text{Prob}[X\in S],...,$ with its obvious meaning.

## Indicator variables

The _indicator variable_ of an [[event|math.probability#events]] $E$ is the $\{0,1\}$-valued random variable $X$ such that
$$
X(\omega) = 1 \kern 5pt \text{if and only if} \kern 5pt \omega\in E
$$

Example: Let $\Omega = \{1,...,6\}$ and $\text{Prob}[\omega]=\frac{1}{6}$ for all $\omega\in \Omega$.
Consider the indicator variable $X:\Omega \rightarrow\R$ for the set $E$ of all primes less than or equal to $6$, i.e.,
$$
X(i) = \begin{cases}
1 &\text{in case $i$ is prim,}\\
0 &\text{otherwise}\\
\end{cases} 
$$
$\text{Prob}[X=0]=\text{Prob}[\{1,4,6\}]=\frac{1}{2},\\$
$\text{Prob}[X=1]=\text{Prob}[\{2,3,5\}]=\frac{1}{2}.$