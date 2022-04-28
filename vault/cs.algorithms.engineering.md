---
id: wfyiyr927x68u3t038reat6
title: Engineering
desc: ''
updated: 1651075717175
created: 1650888547181
---

## Organisation

- Exam: Oral Exam iff 50% points in exercises
- Exercises:
  - weekly exercise sheets
  - usually coding competitions (C++), Hackerrank
  - three best students get algorithm engineering cup
  - deadline fridays
- .

## What is algorithm engineering?

### Traditional algorithms

- Theory people have models, design algorithms, analyze them and deduct performance (and other) guarantees
- Problem: We don't know, which algorithm is the best for our problems
- Implementation takes a long time

### Gaps between theory and practice

| Theory    | $\leftrightarrow$ | Praxis |
|---------------- | --------------- | --------------- |
| simple    | appl. models    | complex    |
| simple    | machine model    | real    |
| complex   | algorithms   | simple   |
| advanced  | data structures | array,... |
| worst case| complexity measures | inputs |
| asympt. | efficiency| constant factors |

### Bits of history

- 1843– Algorithms in theory and practice
- 1950s,1960s Still infancy
- 1970s,1980s Paper and pencil algorithm theory. Exceptions exist, e.g., [D. Johnson], [J. Bentley]
- 1986 Term used by [T. Beth], lecture “Algorithmentechnik” in Karlsruhe.
- 1988– Library of Efficient Data Types and Algorithms (LEDA) [K. Mehlhorn]
- 1997– Workshop on Algorithm Engineering; ESA applied track [G. Italiano]
- 1997 Term used in US policy paper [Aho, Johnson, Karp, et. al]
- 1998 Alex workshop in Italy ; ALENEX

## General Definitions

### Graph

$G=(V,E), V=\{0,...,n-1\}$ vertex set
- $E\subset V\times V$ edge set, sometimes multiset
- $n := |U|, m := |E|$
- $c: V \rightarrow \R_{>0}$ assigns weights to nodes
- $w: E \rightarrow \R_{>0}$ assigns weights to edges
- Both functions depend in their meaning on the modelled application
- extend $c,w$ to sets: $V'\subset V \cdot c(V') := \sum_{v\in V'} c(u)$
- extend $c,w$ to sets: $E'\subset E \cdot w(E') := \sum_{e\in E'} w(e)$

![graph](/assets/svg/cs.algoritms.graph.svg)

### Neighborhood and degree of a node

For $v\in V$ the set $N(v) := \{u| \{v,u\}\in E \}$ denotes the neighborhood of $v$

- $deg(v) :=  |N(v)|$
- with $\Delta := max_{v\in V} deg(v)$ we denote the max. degree

### Subgraph

$H'=(V',E')$ subgraph of $G=(V,E)$ if $H'$ constitutes a graph and $V' \subseteq V, E' \subseteq E$

- Subgraph is node induced if $E':=\{\{u,v\}|u,v\in V', \{u,v\}\in E\}$
- In case the subgraph is node induced, we write $G[V']$
- The connected component of grap h $G$ are all maximal subgraphs $H_i$ of $G$ which are connected

![graph](/assets/svg/cs.algoritms.subGraph.svg)

### Partitioning

A partition $\mathbb{P}$ or $\delta$ of a graph $G$ is a set of blocks (subset) $V_i \subseteq v (i\in \{1,...,k\}) s.t.$

1. $V = \bigcup_l V_l$ (add up)
2. $\forall l: V_l \neq \emptyset$ (non-emtpy)
3. $\forall k \neq i: V_i \cap V_k = \emptyset$ (disjoint)

![graph partitioning](/assets/svg/graphpartitioning.svg)

If $k=2$ we also use the term cut and write $(V_1, V_2 := V\backslash V_1)$

### Cut sets and sizes

- For $A,B \subseteq V, A\cap B=\emptyset$ the set of cut edges is defined as $E(A,B):=\{\{u,v\} \in E | u\in A, v\in B\}$
- The cut size is defined as $w(\mathbb{P}) := \bar{m}(\mathbb{P}) := \sum_{i<j}^{} w(E_{i,j})$, $E_{i,j}:= E(v_i, v_j)$
- The number of coverd edges is defined as $m(\mathbb{P}):= w(E) - \bar{m}(\mathbb{P})$

![cuts](/assets/excalidraw/cs.algorithms.engineering.cuts.excalidraw.svg)
### Quotient Graph

An abstract view of the partitioned graph is the quotient graph where nodes represent blocks and edges are induced by connectivity between the blocks.

- $Q=(\{1,...,k\}=V_Q, E_Q)$
- $\{i,j\}\in E_Q :\Leftrightarrow \exists \{u,v\}\in E: u\in U_i, v\in U_j$
- $c_Q: V_Q \rightarrow \R_{>0}, i\rightarrow c(V_i)$
- $w_Q: E_Q \rightarrow \R_{>0}, \{i,j\} \rightarrow w(E_{i,j})$

## Partitioning / Process Mapping:

### Fundamentals, Problem Definitions and Objective Functions

## Dynamic Clustering, Online Algorithms

## FPT/Kernelization

## Route planning

## Dynamic graph algorihtms