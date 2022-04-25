---
id: 1bh0ch0ldmv5nfenl0yp3pc
title: Randomized Algorithms
desc: ''
updated: 1650902289108
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

### Example 3

TODO

## Motivation

### The tenure game

Initial configuration of the tenure game:

- finitely many tokens $1,...,m$ are placed at positions $d_1,...,d_m$ where $d_i$ are arbitrary nonezero numbers

A single round of the tenure game

1. Partition: Bob partitions the current set $I$