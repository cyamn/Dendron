---
id: 1bh0ch0ldmv5nfenl0yp3pc
title: Randomized Algorithms
desc: ''
updated: 1662195099039
created: 1650868599256
---

## Randomized Algorithm for Half Duplex Communication

Can detect if both send but only read if one side is sending:

* only one side sends at a time
* if both sides starts sending at the same time, both stop, wait a **random** time and start again

---

## How does randomization help with Half Duplex Communication?

If both sides would behave determinsticly, then the they would start sending at the same time always.
Thus by making the Algorithm undeterminstic, e.g. by waiting a random amount of time
both Algorithms get out of sync and thus don't end in a deadlock.

---

## Randomized Quicksort

The core idea of Quicksort is to split the array into two parts, one part is smaller than the pivot and the other part is larger than the pivot, then recursing those two lists.
The pivot in this version of Quicksort is chosen randomly instead of determinsticly.

---

## How does randomization help with Quicksort?

W.l.o.g say we always pick the first element as the pivot (thus deterministicly).
There are certain configurations where deterministic Quicksort is very slow, e.g. if the array is already sorted.
Then the tree degenerates and needs O(n^2) instead of the average O(n log n) time.
Randomized Quicksort avoids this by choosing a random pivot. Now the worst case is still O(n^2)
but is independent from the input.

---

## The copy game

At the beginning of the game player A and B secretly commit to a value in {0,1}.
If both players commit to distinct values, player A wins. Otherwise player B wins.

---

## How does randomization help with the copy game?

If player A would choose the value deterministicly, then player B could copy (learn) this strategy and always win.
But if player A chooses his value by a random coin flip, then player B can't learn the strategy and thus can't always win.
The latter holds no matter how dumb Player A and how smart or computationally powerful Player B is.

---

## What does the copy game show us?

In certain game-theoretical situations, the ability to pursue a randomized strategy makes a big difference.

---
## Binary Parity function

The binary parity function is a function that takes a binary string and returns 1 if the number of 1s is odd and 0 otherwise.
The 2-ary parity function is the XOR function e.g.
$a\oplus b = \begin{cases}
 1&\text{if a and b are the distinct}\\
 0&\text{otherwhise.}\\
\end{cases}$

The binary parity function is associative, e.g. $(a_1\oplus a_2) \oplus (a_1\oplus (a_3\oplus a_1)) = \oplus_5(a_1,a_2,a_1,a_3,a_1)$

---

## One-time pad

The one-time pad is a symmetric encryption scheme that uses a random key. The key is as long as the message. The encryption is done by XORing the message with the key.

$w_{decrypted} = w_{encrypeted}\oplus r$

---

## Why is "One-time pad" called "One-time pad"?

The key is used only once. If the key is used twice, then the encryption is broken:

$w_0\oplus w_1=(w_0\oplus r)\oplus (w_1\oplus r)$

hence one can compute $w_0\oplus w_1$.

---

## Dining Cryptographers

Three cryptographers A,B,C go dining when they find, that their bill was already paid for. So they come up with a protocol that tells them whether one of them paid the bill without revealing who did so:

* Any two of the cryptographers toss a fair coin and obtain a common random bit, which is unknown to the third one. E.g. A and B determine a random bit $r_{A,B}$ unknown to C.
* For any cryptographer X let uX be the parity of the two random bits obtained by X, e.g., let $u_A = r_{A,B} \oplus r_{A,C}$
* Then any cryptographer X publishes $p_x$ = $u_X$ in case X has not paid, and publishes $p_x$ = the complement of $u_X$, otherwise
* In case none of the three has paid, we have: $p_A\oplus p_B\oplus p_C = u_A\oplus u_B\oplus u_C = (r_{A,B}\oplus r_{A,C})\oplus(r_{A,B}\oplus r_{B,C})\oplus(r_{A,C}\oplus r_{B,C})$
* otherwise $p_A\oplus p_B \oplus p_C$ evaluates to 1 because exactly one of the values $p_X$ is equal to the complement of $u_X$