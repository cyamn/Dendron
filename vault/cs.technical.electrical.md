---
id: obaIZQWYnveL20228ezmB
title: Electrical
desc: ''
updated: 1645641659218
created: 1644167679171
header-includes: |
  \usepackage{circuitikz}
---
🚧 this section is not complete

## Unit prefixes

| symbol | name  | factor           |
|--------|-------|------------------|
| $T$    | tera  | $\cdot 10^{12}$  |
| $G$    | giga  | $\cdot 10^{9}$   |
| $M$    | mega  | $\cdot 10^{6}$   |
| $k$    | kilo  | $\cdot 10^{3}$   |
|        | 1     | $\cdot 10^{0}$   |
| $m$    | milli | $\cdot 10^{-3}$  |
| $\mu$  | mikro | $\cdot 10^{-6}$  |
| $n$    | nano  | $\cdot 10^{-9}$  |
| $p$    | piko  | $\cdot 10^{-12}$ |
| $f$    | femto | $\cdot 10^{-15}$ |
| $a$    | atto  | $\cdot 10^{-18}$ |

---

## Charge

* Charge is a property of ㅤelementary particles
  * electrons, protons, pions, muons,
  * there is positive and negative charge
  * charge occurs only in discrete units
  * some particles don't have charge (neutrons, photons,...)
* The unit for charge is ㅤthe coulomb $C$
* The unit load is ㅤ$e=1.602176634\cdot 10^{-19}C$
* One coulomb requires about $6.25\cdot 10^{18}$ electrons
* Analogy for charge is ㅤamount of water (litres, kg)

---

## Current

* Current (symbol usually $I$) is ㅤthe flow of charge $Q$, i.e charge per time: $I=Q/T$ or, more precisely, $I=dQ/dt$
* The unit for current is ㅤampere $A$
* At $1 A$, $1$ coulomb flows through a wire per second
* Analogy for current is water flow (litres/second)

--

![](/assets/images/2022-02-06-20-42-18.png)

---

## Voltage

* Voltage is ㅤthe difference in electrical potentials
  * i.e. the energy required to move a unit charge in an electric field
* the unit for voltage is ㅤvolt $V$
* Analogy for voltage is water level / pressure (Pa)

--

![](/assets/images/2022-02-06-20-46-22.png)

---

## Ground

* Ground is a ㅤreference potential to which we relate all voltages
* A synonym for ground is ㅤmass
* switch symbols are: ㅤ![](/assets/images/2022-02-06-20-55-45.png)

---

## Kirchhoff's laws

* node rule: ㅤThe sum of all currents in a node is zero
  ![](/assets/images/2022-02-06-21-02-31.png)
  Follows from conservation of charge (charge cannot vanish).

--

* loop rule: ㅤThe sum of the voltages in a closed loop is zero
  ![](/assets/images/2022-02-06-21-04-47.png)
  Follows from conservation of energy

---

## Power

* In order to maintain a current flow, energy must be constantly expended.
* The required power is ㅤ$P=U\cdot I$
* The unit for power is ㅤ$W$ watt

---

## Energy

* The (electric) energy is ㅤ$E=P\cdot T$ (power over time)
* The unit for energy is ㅤ$J$ joule
* A full car 'battery' (accumulator) contains e.g. an energy of $50 kWh = 50 kW \cdot 1h = 50,000 W \cdot 3,600 s = 180 MJ$

---

## Resistors
* A resistor is ㅤa component with 2 terminals that a current can flow through if a voltage is applied
* The unit for resistance is ㅤ$\Omega$ omega
* If the current is proportional to the voltage, we call it ohmic resistor that holds:
  * $I=U\cdot G$, $\;G$ is the master value in Siemens $[S]$
  * $I=U/R$, $\;R$ is the resistance in ohm $[\Omega]$
  * $G, R$ describe the same behavior. $G = 1/R, R = 1/G$
* Switch symbols are: ![](/assets/images/2022-02-06-21-28-06.png)

--

* Parallel connection of resistors
  ![](/assets/images/2022-02-06-21-31-37.png)

--

* Series connection of resistors
  ![](/assets/images/2022-02-06-21-32-56.png)

---

## Voltage Divider

$$
\begin{circuitikz} \draw
(0,0) to[battery] (0,4)
  to[ammeter] (4,4) -- (4,0)
  to[lamp] (0,0);
\end{circuitikz}
$$

---

## Capacitors / Capacitance

* A capacitor can ㅤstore charge (Q).
* The unit for capacity is ㅤ$C$ farad
* The capacity is ㅤ$C=Q/U$
* Analogy for capacitor is bathtub holding water level
* Charge capacitor
  * without resistor: $U(t) = \frac{I_0}{C}\cdot t$
  * with resistor $U(t) = U_0 - U_0 e^{-\frac{t}{RC}}$
  

