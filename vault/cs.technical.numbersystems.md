---
id: 65gwsEo01LciOGw1vZhrt
title: Numbersystems
desc: ''
updated: 1644167625963
created: 1643905768404
---

🚧 this section is not complete
## Intro
* Humans: usually calculate in the decimal system
* Computers: usually calculate in theㅤ binary (number) system
* this is the reason, why we need to convert between number systems

---

## Numbersystem
* Basis: positional systems ($B$-adic systems)
* Every natural number $n\in\N$ can be represented by:
  $$n=\sum_{i=0}^k b_iB^i$$
  * $B\in \N, b\geq 2$: Basis
  * $b_i$: coefficients $b_i\in\{0, ..., B-1\}$ (digits)
  * $k$: largest index (only finitely many $b_i\neq 0$)
  * $B^i$: Positional value of the $i$-th position in number $n=(b_kb_{k-1}...b_0)_B$

--

* For a given basis the coefficient sequence $(b_i)$ isㅤ uniquely determined
* A bigger basis leads to:
  * shorter encodings (more compact)
  * more digit variants
  * and: "small multiplication tables" all the more difficult

---

## Important B-adic numbersystems


* Common B-adic numbersystems:
  
  | Basis | Numbersystem        | digits          | use                |
  |-------|---------------------|-----------------|--------------------|
  | 10    | decimal system      | 0,...,9         | real world         |
  | 2     | dual-/binary system | 0,1             | computer           |
  | 8     | octal system        | 0,...,7         | not used anymore   |
  | 16    | hexadecimal system  | 0,...,9,A,...,F | binary but shorter |

--

* Example: representation of the number $31_{10}$
  * $31_{10} = 3\cdot 10^1 + 1\cdot 10^0$
  * $111_5 = 1\cdot 5^2+1\cdot 5^1+1\cdot 5^0$
  * $11111_2 = 1\cdot 2^4+ 1\cdot 2^3+ 1\cdot 2^2+ 1\cdot 2^1 + 1\cdot 2^0$
  * $37_8 = 3\cdot 8^1+7\cdot 8^0$
  * $1F_{16} = 1\cdot 16^1 + F\cdot 16^0$
* Converting binary $\Leftrightarrow$ hexadecimal
  * four binary digits give one hexadecimal one
  * e.g. $1F_{16} = \underbrace{0001}_{1}\;\underbrace{1111}_F {\,}_2$

---

## Rational numbers
* we can represent fractions by ㅤallowing negative exponents $$z=\sum_{i=-m}^{-1} b_iB^i$$
* we can represent rational numbers (and approximate real numbers)
  * $x=\sum_{i=-m}^k b_iB^i = \sum_{i=0}^k b_iB^i + \sum_{i=-m}^{-1} b_iB^i$
  * $x = (b_k b_{k-1}...b_1,b_0,b_{-1},...,b_{-m})_B$

<!-- ## Conversion between number systems -->

---

## Euclidean algorithm
* the euclidean algorithm can be used ㅤto translate between two number systems
* the algorithm works in 3 steps:
  1. calculate $P$ according to $B^p\leq x<B^{P+1}$ (then set $i=P, X_i=x$)
  2. find $b_i$ and the remainder $R_i$ by dividing $X_i$ by $B^i$
  3. set $X_i=R_i$ and repeat step (2) for $i=P-1, .... ,$ to $R_i=0$ or $B^i$ (and thus the conversion error) small enough

--

* example: $122_{10}$ to binary:
  
  | $R_i$       | $/B^i$   | $b_i$   |
  |-------------|----------|---------|
  | $n=122$     | $2^6=64$ | $b_6=1$ |
  | $122-64=58$ | $2^5=32$ | $b_5=1$ |
  | $58-32=26$  | $2^4=16$ | $b_4=1$ |
  | $26-16=10$  | $2^3=8$  | $b_3=1$ |
  | $10-8=2$    | $2^2=4$  | $b_2=0$ |
  | $2-0=2$     | $2^1=2$  | $b_1=1$ |
  | $2-2=0$     | $2^0=1$  | $b_0=0$ |
  $\Longrightarrow 122_{10} = 1111010_2$

---

## Horner Scheme
* The Horner Scheme can be used ㅤto convert between number systems
* The Horner Scheme arises from ㅤcontinued factoring out
* Horner for natural numbers:
  * $n= \sum_{i=0}^k b_iB^i = ((...(b_k\cdot B+b_{k-1})\newline\cdot B+...+b_2)\cdot B+b_1)\cdot B+b_0$
* Horner for fractional portion:
  * $n= \sum_{i=-m}^{-1} b_iB^i = ((...(b_{-m}/ B+b_{-m+1})\newline/ B+...+b_{-2})/ B+b_{-1})/ B$
* Horner Scheme procedure (for $n\in\N$)
  * Calculating in the original system (decimal system)
  * Successive division of the given decimal by the base $B$
  * the remainders result in the digits of the number $n_B$ from least to most significant

--

* example: $15741_{10}$ to Hexadecimal

  | $n$                 | $r$  | $b_i$    |
  |---------------------|------|----------|
  | $15741_{10}/16=983$ | $13$ | $D_{16}$ |
  | $983_{10}/16=61$    | $7$  | $7_{16}$ |
  | $61_{10}/16=3$      | $13$ | $D_{16}$ |
  | $3_{10}/16=0$       | $3$  | $3_{16}$ |

  $\Longrightarrow 15741_{10} = 3D7D_{16}$

--

* example: $122_{10}$ to binary

  | $n$             | $r$ | $b_i$ |
  |-----------------|-----|-------|
  | $122_{10}/2=61$ | $0$ | $0_2$ |
  | $61_{10}/2=30$  | $1$ | $1_2$ |
  | $30_{10}/2=15$  | $0$ | $0_2$ |
  | $15_{10}/2=7$   | $1$ | $1_2$ |
  | $7_{10}/2=3$   | $1$ | $1_2$ |
  | $3_{10}/2=1$   | $1$ | $1_2$ |
  | $1_{10}/2=7$   | $1$ | $1_2$ |
  $\Longrightarrow 122_{10} = 1111010_2$

<!-- ## Horner-Scheme for fraction -->

## Conversion: base $B \rightarrow$ base $B'$

* to transform from base $B$ to decimal ㅤwe just evaluate its [[sum representation|cs.technical.numbersystems.md#numbersystem]]
* example: $101101.1101_2$ to decimal:<br>
  $\left.\begin{aligned}
    \;\;\;\;1&\cdot 2^5 &&= 32 \\
    0&\cdot 2^4 &&= 0 \\
    1&\cdot 2^3 &&= 8 \\
    1&\cdot 2^2 &&= 4 \\
    0&\cdot 2^1 &&= 0 \\
    1&\cdot 2^0 &&= 1 \\
    1&\cdot 2^{-1} &&= 0.5 \\
    1&\cdot 2^{-2} &&= 0.25 \\
    0&\cdot 2^{-3} &&= 0 \\
    0&\cdot 2^{-4} &&= 0.0625 \\
  \end{aligned}\right\} \Longrightarrow 101101.1101_2 = 45,8125_{10}$

* to transform from any base $B$ to another $B'$:
  * first transform to decimal
  * then transform to $B'$ using Horner or Euclidean
  * special case $B'=B^n$ e.g. Binary $\rightarrow$ Hexadecimal (blockwise direct)