---
id: wfyiyr927x68u3t038reat6
title: Engineering
desc: ''
updated: 1650895426718
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

## Notation

### General Definitions

#### Graph

$G=(V,E), V=\{0,...,n-1\}$ vertex set
- $E\subset V\times V$ edge set, sometimes multiset
- $n := |U|, m := |E|$
- $c: V \rightarrow \R_{>0}$ assigns weights to nodes
- $w: E \rightarrow \R_{>0}$ assigns weights to edges
- Both functions depend in their meaning on the modelled application
- extend $c,w$ to sets: $V'\subset V \cdot c(V') := \sum_{v\in V'} c(u)$
- extend $c,w$ to sets: $E'\subset E \cdot w(E') := \sum_{e\in E'} w(e)$

#### Neighborhood and degree of a node

For $v\in V$ the set $N(v) := \{u| \{v,u\}\in E \}$ denotes the neighborhood of $v$

- $deg(v) :=  |N(v)|$
- with $\Delta := max_{v\in V} deg(v)$ we denote the max. degree

#### Subgraph

$H'=(V',E')$ subgraph of $G=(V,E)$ if $H'$ constitutes a graph and $V' \subseteq V, E' \subseteq E$

- Subgraph is node induced if...
- TODO fill missing
- The connected component of graph $G$ are all maximal subgraphs $H_i$ of $G$ which are connected
- A partition $\mathbb{P}$ or $ \Phi$ of a graph $G$ is a set of blocks (subset) $V_i \subseteq v (i\in \{1,...,k\}) s.t.$
  1. $V = \bigcup_$
- TODO: fill

## Partitioning / Process Mapping:

### Fundamentals, Problem Definitions and Objective Functions

## Dynamic Clustering, Online Algorithms

## FPT/Kernelization

## Route planning

## Dynamic graph algorihtms