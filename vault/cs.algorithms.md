---
id: vqy02ecbvboi82vvle7u2gm
title: Algorithms
desc: ''
updated: 1650481852650
created: 1650443569711
---
## Addition

- $\underbrace{a_{n-1}...a_0}_{\text{first op}}+\underbrace{b_{n-1}...b_0}_{\text{second op}}+\underbrace{c_{n}...c_0}_{\text{carries}}=\underbrace{s_n...s_0}_{\text{sum}}$
- takes exactly $n$ primitive operations.
- result is an $n+1$-digit integer

## Multiplication

### Multiplication with scalar

- let $a_{n-1}...a_0$ integer, $b_j$ scalar
- have $n$ products: $a_i\cdot b_j = c_i \cdot B + d_i$
- need to add $c_{n-1}...c_00 + d$
- takes exactly $2n + 1$ operations ($n$ multiplication + $n+1$ addition)
- The result is an $n + 1$-digit number

### School method

``` python
p = 0 : Integer
for j := 0 to n − 1 do
    p := p + a · bj · Bj
```

- takes $3n^2 + 2n$ primitive operations
  - have $n$ [[scalar Multiplications|cs.algorithms#multiplication-with-scalar]]
  - addition of two $n + 1$ digit numbers (omitting 0 additions)
- the product has $2n$-digits

### Recursive school method

> (a) Split a and b into $a_1, a_0, b_1$ and $b_0$</br>
> (b) Compute the four products $a_1\cdot b_1, a_0\cdot b_1, a_1\cdot b_0, a_0\cdot b_0$</br>
> (c) Add the suitable products to obtain $a\cdot b$

- recursive version of [[shool method|cs.algorithms#school-method]]
  - termination condition: $a$ and $b$ are single digit
- using the [[Devide and conquer paradigm|cs.algorithms#devide-and-conquer-paradigm]]

### 

## Devide and conquer paradigm

1. we split the original problem into simpler problems of the same kind
2. we solve the simpler problems using the same method
3. we obtain the solution to the original problem from the solutions to the
subproblems