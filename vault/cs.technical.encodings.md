---
id: D3E1tcOlmJ9MDh6v8FDZJ
title: Encodings
desc: ""
updated: 1650443511377
created: 1643837204049
---

🚧 this section is not complete

## Strings

- a **charset** $C$ is ㅤa finite non-empty set e.g. ${1,b,$,\_}$
- a **character** $c$ is ㅤan element of a charset
- an **alphabet** $\Sigma$ is ㅤa charset with linear order e.g. ${0,1}$ with $0 < 1$
- special alphabets
  - $\Sigma^*$ is the set of all strings over $\Sigma$
  - $\Sigma^+$ is the set of all non-empty strings over $\Sigma$
  - $\Sigma^n$ is the set of all strings with length $n$ over $\Sigma$
- a **string** $s$ is ㅤa finite sequence of chars over $\Sigma$. E.g. $s=010101$
- length of strings
  - $\|s\|$ is the length of the string
  - the empty string $\epsilon$ has the length $0$
- $n$-Bit strings are ㅤall strings of $\Sigma^n$ with $\Sigma={0,1}$
  - also called binary words of length $n$
  - e.g.: $\Sigma={0,1}, \Sigma^\* = {\epsilon,0,1,00,01,10,11,...}$

## Bit sequences

- information is often not encoded bitwise but rather grouped into bigger chunks
- a group of bits is called ㅤa bit sequence
- special bit sequences with defined length and use are:

| \# bits | name                       | \# different words | use                  |
| ------- | -------------------------- | ------------------ | -------------------- |
| $1$     | Bit (b)                    | $2$                | \                    |
| $3$     | Triade                     | $2^3=8$            | octal digits         |
| $4$     | Tetrade, Half-Byte, Nibble | $2^4=16$           | (hexa)decimal digits |
| $8$     | Byte                       | $2^8=256$          | chars                |

- A **byte** is ㅤthe smallest adresseble unit in memory, $1$ Byte = $8$ Bit (always)
- Numbering of bits in a byte:
  - numbered right to left $[7,6,5,4,3,2,1,0]$
  - left halfbyte is high nibble $[7,6,5,4]$
  - right halfbyte is low nibble $[3,2,1,0]$
- Arrangement of bytes in memory
  - Bytes sequentially numbered in memory
  - If data(types) consists of several bytes, the bytes can be ordered in two versions $\rightarrow$ endieness

## Machine words

- hardware manages i.a. ㅤonly binary words of fixed lengths (machine words)
- the length of a machine word is determined by:
  - length of the smallest unit that can be addressed in memory
  - length of units transferred from/to memory
  - length of processor processing units (for elementary data types)
  - width of data paths and input/output interfaces
- Common machine word lengths are (today):
  - typically: 32 bits (4 bytes) (“32 bit processor”)
  - also 8 and 16 bit for simple microcontrollers
  - 64 or 128 bits for current high-performance (Intel Itanium, AMD Opteron, ...) or graphics processors
  - Corresponding to half-word, double-word, quadruple-word
- Byte ordering
  - Big-Endian: Most significant Byte at smallest Address
  - Little-Endian: Least significant Byte at highest Address

## Encodings for communication or storage

- The basic problem of communication is ㅤto be able to get the exact or approximated a message at any point of transmission.
- Encoding types
  - Source coding: e.g. ASCII code (text), TIFF (images), PCM(speech), MPEG (videos), ...
  - Channel encoding: Representation of the data to be transmitted in code words that are adapted to the transmission channel (e.g.Redundancy).
  - line coding: Protection against transmission errors by error-detecting or -correcting codes
