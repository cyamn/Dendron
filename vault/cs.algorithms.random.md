---
id: 1bh0ch0ldmv5nfenl0yp3pc
title: Randomized Algorithms
desc: ''
updated: 1651142029428
created: 1650868599256
---

## Examples

### Example 1: Half-dublex Channel

Consider two network nodes A and B connected to a channel that can transfer data in both directions but only one direction at a time.

In case A and B are sending at the same time they will recognize, that the other node sends too, but they will not get information about the data send by the other side.

In order to avoid a deadlock due to A and B sending repeatedly at the same time, one may use a protocol where:

- if one side is sending, the other side will never start sending,
- if both sides send at the same time, both stop, wait a random amount of time and then start sending again (while obeying Rule a).

### Example 2: Randomized Quicksort

During the recursive calls of the Quicksort algorithm a pivot must be chosen. The pivot is used to split the list into tree lists (smaller, equal, greater).
Consider two ways of finding a pivot:

- deterministic Quicksort: choose pivot element deterministically, e.g., the first element, median, first, last, middle element.
- randomized Quicksort: choose pivot element
uniformly at random from all elements in the current list.

For both variants there are cases where the chosen pivots are bad (in a sense that the tree parts degenerate).
In worst case the number of comparisons required for sorting a list with n elements goes up to roughly $n^2$ instead of the average number $O(n log n)$.
- With deterministic Quicksort, there are rare bad inputs that always result in a bad choice of the pivot elements.
- With randomized Quicksort, all inputs are equally good, however, for any given input with small probability the random choices of the algorithm may result in a bad choice of the pivot elements.

### Example 3: The copy game

At the beginning of each round, two players A and B commit secretly to a value $x_A$
and $x_B$ , respectively, from $\{0, 1\}$.
Player $A$ wins if the two values are distinct.
Player $B$ wins if both values are the same.

In certain game-theoretical situations, the ability to pursue a randomized strategy makes a big difference:

- if player $A$ follows a deterministic strategy $\rightarrow$ player $B$ can simulate $A$ and thus make $A$ always loose
- if player $A$ follows random strategy $\rightarrow$ player $B$ cannot simulate anything $\rightarrow A$ wins exactly half of the rounds

<!-- TODO: move this -->
### Excurs on the parity function

An $n$-ary Boolean function is a function $\{0,1\}^n\rightarrow\{0,1\}$, where 0 means false and 1 means true.

The $n$-ary function $\oplus_n$ is the Boolean function on $n$ arguments that yields 1 exactly when an odd number of the arguments is equal to 1.

The $2$-ary parity function $\oplus_2$, which we also denote by $\oplus_2$, is just the Exclusive-Or function (XOR function, for short), i.e.,
$$
a\oplus b =
\begin{cases}
1 \text{ if $a$ and $b$ are distinct}, \\
0 \text{ otherwise.}
\end{cases}
$$

The binary parity function is associative:
$(a_1\oplus a_2)\oplus(a_1\oplus(a_3\oplus a_1)) = \oplus_5(a_1,a_2,a_1,a_3,a_1)$

### Example 4: One-time pad

- Consider $A$ wanting to send $B$ a secret binary. word $w=w_1...w_n,\; w_i\in\{0,1\}$.
- Suppose both know an otherwise secret random word $r=r_1...r_n$.
- Then $A$ can simply send the word $w\oplus r=(w_1\oplus r_1)...(w_n\oplus r_n)$
- Now $B$ can decode the word in the same way e.g:
  $$
  w\oplus r\oplus r=(w_1\oplus r_1\oplus r_1)...(w_n\oplus r_n\oplus r_n)= (w_1\oplus 0)...(w_n\oplus 0) = w_1...w_n = w$$
- Note that we can only use the secret word $r$ once as we otherwise could tell wether two encoded words $w, v$ are the same:
  $$
  (w\oplus r) \oplus (v\oplus r) = w\oplus v \oplus r\oplus r= w\oplus v
  $$

### Example 5: Dining cryptographers

TODO

<!-- ## Motivation -->

## The tenure game

### Definition

Initial configuration of the tenure game:

- finitely many tokens $1,...,m$ are placed at positions $d_1,...,d_m$ where $d_i$ are arbitrary nonezero numbers

A single round of the tenure game

1. **Partition**: Bob partitions the current set $I$ of tokens that are not at position $0$ into two sets $I_0$ and $I_1$ (i.e. $I$ is the disjoint union of $I_0$ and $I_1$).
2. **Selection**: Alice determines a bit $r$
3. **Removal and promotion**:
   - The tokens in $I_r$ are removed.
   - The tokens in $I_{1-r}$ are moved one step closer to position $0$
   - Tokens that where already at position $0$ just stay there.

### Winning condition

