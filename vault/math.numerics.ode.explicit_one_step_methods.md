---
id: zhkfkevppbju12mvzvps80v
title: Explicit one step methods
desc: ''
updated: 1647632685708
created: 1647631874884
---

We begin this section with the method that serves as
the prototype for a whole class of schemes for solving IVPs numerically: The **Euler Method**
(As always for problems with infinite dimensional solution spaces, numerical solution refers
to finding an approximation by means of a discretization method and the study of the
associated discretisation error.)

Consider the following problem:

Given an IVP with $t_0=0$, calculate the value $u(T)$ at time $T>0$.


Note first that at the initial point 0, not only the value $u(0) = u_0$ of $u$, but also the derivative $u'(0) = f(0,u_0)$ are known. Thus, near $0$ we are able to approximate the
solution $u(t)$ (in blue in Figure 2.1) by a straight line $y(t)$ (in red in Figure 2.1, left) using
a first-order Taylor series expansion, i.e.

$$
u(t)\approx y(t) = u(0) + tu'(0) = u_0 + tf(0,u_0).
$$

The figure suggests that in general the accuracy of this method may not be very good for
$t$ far from $0$. The first improvement is that we do not draw the line through the whole
interval from $0$ to $T$. Instead, we insert intermediate points and apply the method to each
subinterval, using the result of the previous interval as the initial point for the next. As a
result we obtain a continuous chain of straight lines (in red in Figure 2.1, right) and the
so-called **Euler method** (details below).

{{< figure src="../../../../../images/20210923112736.png" title="" >}}

Derivation of the Euler method. Left: approximation of the solution of the
IVP by a line that agrees in slope and value with the solution at $t = 0$. Right: Euler
method with three subintervals.

## Time Steps

On a time interval $I=[0,T]$, we define a partitioning in $n$ subintervals, also known as **time steps**. Here we choose the following notation:

$$
I = \bigcup_{1\leq k\leq n} I_i \text{ with }
I_k = \big[I_{k-1}, I_k\big]
$$

The time steps $I_k = [t_{k−1},t_k]$ have step size $h_k = t_k −t_{k−1}$. A partitioning in $n$
time steps implies $t_n = T$. The term “$k$-th time step” is used both for the interval
$I_k$ and for the point in time $t_k$ (which one is meant will be clear from the context).
Very often, we will consider uniform time steps and in that case the step size is
denoted by $h$ and $h_k = h$, for all $k$.

In the following chapters we will regularly compare the
solution of an IVP with the results of discretization methods. Therefore, we introduce the
following convention for notation and symbols.

## Exact vs discrete solution of an IVP


The solution of the IVP is called the **exact** or **continuous solution**. to emphasize that it
is the solution of the non-discretized problem. We denote it in general by $u$ and in addition
we use the abbreviation

$$
u_k=u(t_k)
$$

If u is vector-valued we also use the alternative superscript $u^{(k)}$ and write $u^{(k)}_i$ for the $i$th
component of the vector $u(t_k)$.

---

The **discrete solution** is in general denoted by $y$ and we write $y_k$ or $y^{(k)}$ for the value of
the discrete solution at time $t_k$. In contrast to the continuous solution, $y$ is only defined
at discrete time steps (except for special methods discussed later).

{{< /hint >}}

## Explicit one-step methods

{{< hint warning >}}
An explicit one-step method
is a method which, given $u_0$ at $t_0 = 0$ computes a sequence of approximations
$y_1 ...,y_n$ to the solution of an IVP at the time steps $t_1,...,t_n$ using an update
formula of the form

$$
y_k = y_{k-1} + h_k F_{h_k}(t_{k-1}, y_{k-1}).
$$

The function $F\_{h\_k}()$ is called **increment function**. We will often omit the index $h_k$ on $F\_{h\_k}()$ because it is clear that the method is always applied to time intervals. The method is called **one-step method** because the value $y_k$ explicitly depends only on the values $y_{k-1}$ and $f(t_{k-1}, y_{k-1})$, not on previous values

{{< /hint >}}

**Remark 1**: The adjective ‘explicit’ is here in contrast to ‘implicit’ one-step methods, where the increment
function depends also on $y_k$ and aboves equation typically leads to a nonlinear equation for $y_k$.

**Remark 2**: For one-step methods every step is per definition identical. Therefore, it
is sufficient to define and analyze methods by stating the dependence of $y_1$ on $y_0$, which
then can be transferred to the general step from $y_{n−1}$ to $y_n$. The general one-step method
above then reduces to

$$
y_1 = y_0+h_1 F_{h_1}(t_0,y_0)
$$

This implies that the values $y_k$ with $k \geq 2$ are computed through formula aboves formular with the
respective $h_k$ and the same increment function (but evaluated at $t_{k−1},y_{k−1}$).

{{< details "Example: Euler method" close >}}
The simplest choice for the increment function is $F\_{h\_k}:=f(t,y)$, leading to the **Euler method**

$$
y_1 = y_0 + hf(t_0, y_0)
$$

Consider, for example, the (scalar, homogeneous, linear) IVP

$$
u'=u, \qquad\qquad\qquad  u(0)=1,
$$

which has exact solution $u(t)=e^t$. In that case, the Euler method (with uniform time steps) reads

$$
y_1=(1+h)y_0.
$$

The results $h=1$ and $h=1/2$ are:

<center>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky" colspan="2">exact<br></th>
    <th class="tg-0pky" colspan="3">$h=1$</th>
    <th class="tg-0lax" colspan="3">$h$=1/2<br></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">$t$</td>
    <td class="tg-0pky">$u(t)$</td>
    <td class="tg-0pky">$k$</td>
    <td class="tg-0lax">$y_k$</td>
    <td class="tg-0lax">$|u_k-y_k|$</td>
    <td class="tg-0lax">$k$</td>
    <td class="tg-0lax">$y_k$</td>
    <td class="tg-0lax">$|u_k-y_k|$</td>
  </tr>
  <tr>
    <td class="tg-0pky">$0$</td>
    <td class="tg-0pky">$1$</td>
    <td class="tg-0pky">$0$</td>
    <td class="tg-0lax">$1$</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">$0$</td>
    <td class="tg-0lax">$1$</td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0pky">$1$</td>
    <td class="tg-0pky">$2.71828$</td>
    <td class="tg-0pky">$1$</td>
    <td class="tg-0lax">$2$</td>
    <td class="tg-0lax">$0.718$</td>
    <td class="tg-0lax">$2$</td>
    <td class="tg-0lax">$2.25$</td>
    <td class="tg-0lax">$0.468$</td>
  </tr>
  <tr>
    <td class="tg-0pky">$2$</td>
    <td class="tg-0pky">$7.38906$</td>
    <td class="tg-0pky">$2$</td>
    <td class="tg-0lax">$4$</td>
    <td class="tg-0lax">$3.389$</td>
    <td class="tg-0lax">$4$</td>
    <td class="tg-0lax">$5.0625$</td>
    <td class="tg-0lax">$2.236$</td>
  </tr>
  <tr>
    <td class="tg-0pky">$k$</td>
    <td class="tg-0pky">$2.71828^k$</td>
    <td class="tg-0pky">$k$</td>
    <td class="tg-0lax">$2^k$</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">$2k$</td>
    <td class="tg-0lax">$2.25^k$</td>
    <td class="tg-0lax"></td>
  </tr>
</tbody>
</table>
</center>
The error is growing in time. The approximation of the solution is improved by
reducing $h$ from $1$ to $1/2$. The goal of the following error analysis will be to establish
those dependencies.

{{< /details >}}

# Error analysis of Explicit one-step methods

In Figure 2.1, we observe that, at a given time $t_{k+1}$, the error consists
of two parts: (i) due to replacing the differential equation by the discrete method on the
interval $I_k$ and (ii) due the initial value $y_k$ already being inexact. This is illustrated more
clearly in Figure 2.2. Therefore, in our analysis we split the error into the local error and
an accumulated error. The local error compares continuous and discrete solutions on a
single interval with the same initial value. In the analysis, we will have the options of
using the exact (right figure) or the approximated initial value (left figure).

## Global error

{{< hint warning >}}
Let $u$ be a solution of the differential equation $u'=f(t,u)$ on the interval $I=[t_0,t_n]=[0,T]$. Then the **global error** of a discrete method $F\_{\_n}$ is

$$
|u(t_n)-y(t_n)|
$$

i.e., the difference between the solution $u_n$ of the differential equation at $t_n$ and the result of the one-step method at $t_n$

{{< /hint >}}

## Local error

{{< hint warning >}}
Let $u$ be a solution of the differential equation $u'=f(t,u)$ on the interval $I=[t_{k-1},t_k]$. Then, the **local error** of a discrete method $F\_{\_n}$ is

$$
\eta_k = \eta_k(u)=u_k-\left[u_{k-1}+h_k F_{h_k}(t_{k-1}, u_{k-1})\right],
$$

i.e., the difference between $u_k=u(t_k)$ and the result of one time step (2.1) with this method with exact initial value $u_{k-1}=u(t_{k-1})$.
{{< /hint >}}

## Truncation error

{{< hint warning >}}
The **truncation error** is the quotient of the local error and $h_k$:

$$
\tau_{k}=\tau_{k}(u)=\frac{\eta_{k}}{h_{k}}=\frac{u_{k}-u_{k-1}}{h_{k}}-F_{h_{k}}(t_{k-1},u_{k-1}).
$$

{{< /hint >}}

## Consistency order

{{< hint warning >}}
The one-step method $F_{h_k}(t,y)$ is said to have **consistency of order** $p$, if for all sufficiently regular functions $f$ there exists a constant $c$ independent of $h:=\max_{k=1}^{n}h_k$ such that for $h\rightarrow 0$:

$$
\max_{k=1}^{n}|\tau_k|\leq ch^p
$$

{{< /hint >}}

{{< expand "Example" "..." >}}
To find the consistency of the Euler method, where $F_{h_k}(t,y)=f(t,y)$, consider Taylor expansion of $u$ at $t_{k-1}$:

$$
u(t_{k})=\left.u(t_{k-1})+h_{k}u^{\prime}(t_{k-1})+\frac{1}{2}h_{k}^{2}u^{\prime\prime}(\zeta)\right., \quad \text{for some}\quad \zeta\in I_k.
$$

As a result the truncation error reduces to:

$$
\begin{align*}
\tau_{k}&=\frac{u_{k}-u_{k-1}}{h_{k}}-F_{h_{k}}(t_{k-1},u(t_{k-1})) \newline
&=\frac{h_k f(t_{k-1},u_{k-1})+\frac{1}{2}h^2_k u''(\zeta)}{h_k} - f(t_{k-1},u_{k-1}) \newline &= \frac{1}{2}u''(\zeta)h_k.
\end{align*}
$$

If $f\in C^1(D)$ on a compact set $D$ around the graph of $u$, we can bound the right hand side:

$$
\begin{align*}
|\tau_{k}|\leq\ \frac{1}{2}\operatorname*{max}_{k}|u^{\prime\prime}(t)|\,h_{k} &= \frac{1}{2}\max_{t\in I_{k}}\left|\frac{\partial f}{\partial t}\bigl(t,u(t)\bigr)+\nabla_{y}f\bigl(t,u(t)\bigr)\mathcal{u}^{\prime}(t)\right|\mathcal{h}_{k} \newline
&\leq \frac{1}{2}\max_{(t,y)\in D}\left|\frac{\partial f}{\partial t}\bigl(t,y\bigr)+\nabla_{y}f\bigl(t,y\bigr)f(t,y)\right|\mathcal{h}_{k}.
\end{align*}
$$

Here, we use the assumption that $f$ is sufficiently smooth to conclude that the Euler
method is consistent of order $1$ (slightly more than Lipschitz continuous).
{{< /expand >}}

## Discrete Grönwall inequality

Now we consider stability of explicit one-step methods. To prove this, we first need a
discrete version of Grönwall’s inequality.
{{< hint info >}}
Let $(w_k), (a_k), (b_k)$ be nonnegative sequences of real numbers, such that $(b_k)$ is monotonically nondecreasing. Then it follows from

$$
w_{0}\leq b_{0}\quad\mathrm{and}\quad w_{n}\leq\sum_{k=0}^{n-1}a_{k}w_{k}+b_{n},\quad\mathrm{for~all}\ \ n\geq1,
$$

that

$$
w_{n}\,\leq\,\exp\,\left(\sum_{k=0}^{n-1}a_{k}\right)\,b_{n}.
$$

{{< /hint >}}

{{< expand "Proof" "..." >}}
Let $k\in\N$ and define the functions $w(t), a(t)$ and $b(t)$ such that for all $t\in [k-1,k)$

$$
w(t)=w_{k-1},\quad a(t)=a_{k-1},\quad b(t)=b_{k-1}.
$$

These functions are bounded and piecewise continuous on any finite interval. Thus, they
are integrable on $[0,n]$. Therefore, the continuous Grönwall inequality of
applies and proves the result.
$\quad\square$
{{< /expand >}}

## Discrete stability of explicit one-step methods

{{< hint info >}}
If $F_{h_k} (t,y)$ is Lipschitz continuous in $y$ for
any $t = t_k, k < n$, with constant $L$, then the corresponding one-step method is
**discretely stable** in the following sense: Suppose $(x_k)$ and $(z_k)$ are two arbitrary
sequences, e.g. from two numerical approximations of the IVP with $F_{h_k}$ with different initial conditions $u_0$ and $v_0$, or the approximate and the exact solution at $t = t_k$.
Then

$$
|x_{n}-z_{n}|\leq e^{L T}\left(|x_{0}-z_{0}|+\sum_{k=1}^{n}|\eta_{k}(x)-\eta_{k}(z)|\right)
$$

{{< /hint >}}

{{< expand "Proof" "..." >}}
Substracting the equations

$$
\begin{array}{c}{{\eta_{k}(x)=x_{k}-x_{k-1}-h_{k}F_{h_{k}}(t_{k-1},x_{k-1}),}}\\ {{\eta_{k}(z)=z_{k}-z_{k-1}-h_{k}F_{h_{k}}(t_{k-1},z_{k-1}),}}\end{array}
$$

and exploiting the Lipschitz continuity of $F_{h_k}$ we obtain

$$
\begin{align*}
|x_{k}-z_{k}|&=|x_{k-1}-z_{k-1}+\eta_{k}(x)-\eta_{k}(z)+h_{k}(F_{h_{k}}(t_{k-1},x_{k-1})-F_{h_{k}}(t_{k-1},z_{k-1})) \newline
&\leq|x_{k-1}-z_{k-1}|+|\eta_{k}(x)-\eta_{k}(z)|+L h_{k}|x_{k-1}-z_{k-1}|.
\end{align*}
$$

Recursive application yields

$$
|x_{n}-z_{n}|\leq|x_{0}-z_{0}|+\sum_{k=1}^{n}|\eta_{k}(x)-\eta_{k}(z)|+\sum_{k=1}^{n}L h_{k}|x_{k-1}-z_{k-1}|.
$$

The estimate for the discrete Grönwall inequality, choosing $w_{n}=|x_{n}-z_{n}|,\\;a_{n-1}=L h_{n}$ and $b_n=|x_{0}-z_{0}|+\sum_{j=k}^{n}|\eta_{k}(x)-\eta_{k}(z)|.\quad\square$
{{< /expand >}}

## One-step methods with finite precision

{{< hint info >}}
Let the one-step
method $F_{h_k}$ be run in finite precision floating-point arithmetic on a computer, yielding a (perturbed) sequence $(z_k)$. Let $(y_k)$ be the mathematically correct solution
of the one-step method. Then, the difference equation is fulfilled only up to
machine accuracy eps, i.e., there exists a $c > 0$:

$$
\begin{align*}
|y_0-z_0|&\leq c|z_0|eps,\newline
|\eta_{k}(y)-\eta_{k}(z)|=|\eta_{k}(z)|&\leq c|z_{0}|\mathrm{eps}\\,.
\end{align*}
$$

Then, the error between the true solution of the one-step method $y_n$ and the com-
puted solution $z_n$ is bounded by

$$
|y_{n}-\ z_{n}|\leq c\\,e^{L T}n\operatorname*{max}_{k=0}|z_{k}|\\,\mathrm{eps}.
$$

{{< /hint >}}

## Convergence of one-step methods

{{< hint info >}}
Let the one-step method
$F_{h_k}$ be consistent of order $p$ and Lipschitz continuous in its second argument, for all
$t = t_k$, $k < n$. Furthermore, let $y_0 = u_0$ and let $h = max^n_{k=1} h_k$. Then, the global
error of the one-step method converges with order $p$ as $h\rightarrow 0$ and

$$
\left|u_{n}-y_{n}\right|\leq c T e^{L T}h^{p},
$$

where the constant $c$ is idependent of $h$.
{{< /hint >}}

{{< expand "Proof " "..." >}}
Since $F_{h_k}$ is consistent of order $p$, we have, for all $k=1,...,n$,

$$
|\eta_{k}(u)-\underbrace{\eta_{k}(y)}_{=0}|=h_{k}|\tau_{k}(u)|\leq c h^{p}\,h_{k},
$$

Now, since $F_{h_k}$ is Lipschitz continuous in its second argument, we can apply the discrete
stability result with $x_k = y_k$ and $z_k = u_k$ and use the bound to
obtain

$$
|u_{n}-y_{n}|\leq e^{L T}\sum_{k=1}^{n}|\eta_{k}(u)-\eta_{k}(y)|\leq e^{L T}\,c h^{p}\sum_{k=1}^{n}h_{k}=c T\,e^{L T}h^{p}.
$$

$\quad\square$
{{< /expand >}}

**Corollary** If f is in $C^1$ in a compact set $D$ around the graph of u over $[0,T]$, then
the convergence order of the global error in the Euler method is one.

## General approach for showing convergence

{{< hint danger >}}
Important! General approach for showing convergence is:

$$
\boxed{\text{CONSISTENCY + STABILITY = CONVERGENCE}}
$$

{{< /hint >}}

# Runge-Kutta methods

Since the IVP is equivalent to the Volterra integral equation, we can consider
its numerical solution as a quadrature problem. However, the difficulty is that the integrand
is not known. It will need to be approximated on each interval from values at earlier times,
leading to a class of methods for IVP, called Runge-Kutta methods.

We present the formula again only for the calculation of $y_1$ from $y_0$ on the interval from $t_0$
to $t_1 = t_0 + h$. The formula for a later time step $k$ is obtained by replacing $y_0$, $t_0$ and $h$ by
$y_{k−1}, t_{k−1}$ and $h_k$, respectively to obtain $y_k$. (The coefficients $a_{ij},b_j,c_j$ remain fixed.)

## Explicit Runge-Kutta method (ERK)

{{< hint warning >}}
An explicit **Runge-Kutta method (ERK)** is a one-step
method that uses $s$ evaluations of $f$ with the representation

$$
\begin{align*}
&g_{i}=y_{0}+h\sum_{j=1}^{i-1}a_{i j}k_{j}\\,, && i=1,...,s, \newline
&k_{i}=f\left(t_{0}+c_{i}h,g_{i}\right)\\,, && i=1,...,s, \newline
&y_{1}=y_{0}+h\sum_{i=1}^{s}b_{i}k_{i}\\,,
\end{align*}
$$

i.e., with increment function

$$
F_{h}(t,y_{0}):=\sum_{i=1}^{s}b_{i}f\left(t_{0}+c_{i}h,g_{i}\right).
$$

The values $t_0 + c_ih$ are the quadrature points on the interval $[t_0,t_1]$. The values $g_i$
are approximations to the solution $u(t_0 + c_ih)$ at the quadrature points, obtained
via recursive extrapolation using the evaluations of $f$ at previous quadrature points.
Since the method uses $s$ intermediate approximations of $u$ on $[t_0,t_1]$, it is called an
$s$-stage method.
{{< /hint >}}

**Remark** In typical implementations, the intermediate values $g_i$ are not stored
separately. However, they are useful for highlighting the structure of the method.

## Butcher tableau

{{< hint warning >}}
It is customary to write Runge-Kutta methods in the form of a Butcher tableau, containing only the coefficients of its equations in the following matrix form:

$$
%\renewcommand\arraystretch{1.2}
\begin{array}
{c|cccc}
0\newline
c_2 & a_{21}\newline
c_3 & a_{31} & a_{32} \newline
\vdots & \vdots & \vdots & \ddots\newline
c_s & a_{s1} & a_{s2} & \cdots & a_{s,s-1} \newline
\hline
& b_1 & b_2 & \cdots & b_{s-1} & b_s
\end{array}
$$

{{< /hint >}}

**Remark**: The first row of the tableau should be read such that $c_1 = 0, g_1 = y_0$ and
that $k_1$ is computed directly by $f(t_0,y_0)$. The method is explicit since the computation of $k_i$ only involves coefficients with index less than $i$. The row below the line is the short form
of formula for $y_1$ and lists the quadrature weights in the increment function $F_h(t,y_0)$.

Considering the coefficients $a_{ij}$ as the entries of a square $s\times s$ matrix $A$, we see that $A$ is
strictly lower triangular. This is the defining feature of an explicit RK method. We will
later see RK methods that also have entries on the diagonal or even in the upper part.
Those methods will be called *“implicit”*, because the computation of a stage value also
involves the values at the current or future stages. We will also write $b = (b_1,...,b_s)^T$ and
$c = (0,c_2,...,c_s)^T$ , such that the Butcher tableau in simplifies to

$$
\begin{array}
{c|cccc}
c & A\newline
\hline
& b^T
\end{array}
$$

{{< expand "Example: Eulers Butcher Tableau" "..." >}}
The Euler method has the Butcher tableau:

$$
\begin{array}
{c|cccc}
0 & \newline
\hline
& 1
\end{array}
$$

That leads to the already known formula:

$$
y_1 = y_0 +hf(t_0,y_0)
$$

The values $b_1 = 1$ and $c_1 = 0$ indicate that this is a quadrature rule with a single point
at the left end of the interval. As a quadrature rule, such a rule is exact for constant
polynomials and thus of order $1$.
{{< /expand >}}

## Modified Euler Method

{{< tabs "modifiedEulerMethodTabs" >}}
{{< tab "Tableau" >}}
{{< hint info >}}
The **modified Euler method** is a variant of Euler’s method with the following Butcher tableau:

$$
%\renewcommand\arraystretch{1.2}
\begin{array}
{c|cccc}
0\newline
\frac{1}{2} & \frac{1}{2}\newline
\hline
& 0 & 1
\end{array}
$$

And is of order $2$
{{< /hint >}}
{{< /tab >}}
{{< tab "Formular" >}}
{{< hint info >}}
The **modified Euler method** is a variant of Euler’s method of the following form:

$$
\begin{align*}
k_1 &= f(t_0, y_0) \newline
k_2 &= f\left(t_0+\frac{1}{2}h_1,\quad y_0+h_1\frac{1}{2}k_1\right) \newline
y_1 &= y_0 + h_1 k_2
\end{align*}
$$

And is of order $2$
{{< /hint >}}
{{< /tab >}}
{{< /tabs >}}
{{< hint danger >}}
A good exercise is to try the conversion from tableu to formular or the other way aroud yourself!
{{< /hint >}}

**Remark**: The modified Euler method uses one quadrature node at $t_0+ \frac{h}{2} = \frac{t_0+t_1}{2}$ and an approximation to $f(t_0 + \frac{h}{2} ,u(t_0 + \frac{h}{2}))$ in $F_h$, corresponding to the midpoint quadrature
rule.

## Heun method of order 2

{{< tabs "HeunMethodTabs" >}}
{{< tab "Tableau" >}}
{{< hint info >}}
The so-called **Heun method of order 2** is characterized through the tableau:
 
$$
\begin{array}
{c|cccc}
0\newline
1 & 1\newline
\hline
& \frac{1}{2} & \frac{1}{2}
\end{array}
$$
 
And is of order $2$
{{< /hint >}}
{{< /tab >}}
{{< tab "Formular" >}}
{{< hint info >}}
The so-called **Heun method of order 2** is characterized through the equation

$$
\begin{align*}
k_1 &= f(t_0, y_0) \newline
k_2 &= f(t_0+h_1,\quad y_0+h_1k_1) \newline
y_1 &= y_0 + h\left(\frac{1}{2}k_1+\frac{1}{2}k_2\right)
\end{align*}
$$

And is of order $2$
{{< /hint >}}
{{< /tab >}}
{{< /tabs >}}
{{< hint danger >}}
A good exercise is to try the conversion from tableu to formular or the other way aroud yourself!
{{< /hint >}}

**Remark**: The Heun method of order 2 is constructed based on the trapezoidal rule.

## Consitency order Heun & mod. Euler

{{< hint info >}}
For $f$ sufficiently smooth, the Heun method of order $2$ and the
modified Euler method have consistency order two.

---

Here and in the following proofs of consistency order, we will always assume that all necessary
derivatives of $f$ exist and are bounded and simply write “$f$ is sufficiently smooth”.
{{< /hint >}}

{{< expand "Proof" "..." >}}
The proof uses Taylor expansion of the continuous solution $u_1$ and the discrete
solution $y_1$ around $t_0$ with $y_0 = u_0$. W.l.o.g. we choose $t_0 = 0$. Considering first only the
case $d = 1$ and the abbreviations

$$
f_{t}=\partial_{t}f(t_{0},u_{0})\quad\mathrm{and}\quad f_{y}=\partial_{y}f(t_{0},u_{0})
$$
and replacing $u'(t_0) = f(t_0,u_0) = f$, we obtain
$$
\begin{align*}
u_1 = u(h) &= u_0 + hf(t_0,u_0) + \frac{h^2}{2}(f_t+f_yf) \newline
&+\frac{h^3}{6}(f_{tt}+2f_{ty}f^2+f_yf_t+f_y^2f)+....
\end{align*}
$$

For the discrete solution of the modified Euler step on the other hand, Taylor expanding
$f$ around $(t_0,u_0)$ leads to

$$
\begin{align*}
y_{1}&=u_{0}+h f\left(t_{0}+\frac{h}2,u_{0}+\frac h2f(t_{0},u_{0})\right) \newline
&=u_{0}+h f+{\frac{h^{2}}{2}}\big(f_{t}+f_{y}f\big)+{\frac{h^{3}}{8}}\big(f_{t t}+2f_{t y}f+f_{y y}f^{2}\big)+\dots
\end{align*}
$$

Thus, $|\tau_1| = h−1|u_1 −y_1| = O(h_2)$. Since the truncation error at the kth step can be
estimated identically, the method has consistency order two. The proof for the Heun
method is left as an exercise.
For $d > 1$, the derivatives with respect to $y$ are no longer scalars, but tensors of increasing
rank, or equivalently multilinear operators. Thus, to be precise in $d$ dimensions, $\partial_y f(t_0,u_0)$
is a $d\times d$ matrix that is applied to the vector $f(t_0,u_0)$ and we should write more carefully
$$
f_{y}(f)\\,=\\,\partial_{y}f(t_{0},\\,u_{0})f(t_{0},\\,u_{0}).
$$
Similarly, $\partial_{yy}f(t_0,u_0)$ is a $d\times d\times d$ rank-3 tensor, or more simply a bilinear operator and
to stress this we write $f_{yy}(f,f)$ instead of $f_{yy}f^2$. (However, we will not dwell on this issue
in this course.) $\quad\square$
{{< /expand >}}


## Suitable three stage Runge-Kutta method

{{< tabs "ThreeStageMethodTabs" >}}
{{< tab "Tableau" >}}
{{< hint info >}}
A suitable three stage Runge-Kutta method is:

$$
%\renewcommand\arraystretch{1.2}
\begin{array}
{c|cccc}
0\newline
\frac{1}{2} & \frac{1}{2}\newline
1 & -1 & 2 \newline
\hline
& \frac{1}{6} & \frac{4}{6} & \frac{1}{6}
\end{array}
$$

This method is obviously based on the Simpson rule.
{{< /hint >}}
{{< /tab >}}
{{< tab "Formular" >}}
{{< hint info >}}
A suitable three stage Runge-Kutta method is:

$$
\begin{align*}
k_1 &= f(t_0, y_0) \newline
k_2 &= f\left(t_0+\frac{1}{2}h,y_0+\frac{1}{2}hk_1\right) \newline
k_3 &= f(t_0+h, y_0-hk_1+2hk_2) \newline
y_1 &= y_0 + h\left(\frac{1}{6}k_1+\frac{4}{6}k_2+\frac{1}{6}k_3\right)
\end{align*}
$$

This method is obviously based on the Simpson rule.
{{< /hint >}}
{{< /tab >}}
{{< /tabs >}}

**Remark**: These Taylor series expansions become tedious very fast. For autonomous ODEs $u' = f(u)$ the analysis simplifies significantly. The Runge-Kutta method
reduces to
$$
\begin{align*}
g_{i}&=y_{0}+h\sum_{j=1}^{i-1}a_{i j}f(g_{j}),\quad i=1,...,s \newline
y_{1}&= y_{0}+h\sum_{j=1}^{s}b_{j}f(g_{j}).
\end{align*}
$$
Memo: Each (non-autonomous) ODE can be autonomized using the transformation:
$$
U^{\prime}:=\ {\binom{u^{\prime}}{t^{\prime}}}=\ {\binom{f(t,u)}{1}}=:F(U).
$$

## Invariant under autonomization for ERKs
{{< hint info >}}
An ERK is invariant under autonomization, i.e. its coefficients
remain unchanged, if and only if
$$
\sum_{j=1}^{i-1}a_{i j}=c_{i},\quad i=1,\dots,s,\quad{\mathrm{and}}\quad\sum_{j=1}^{s}b_{j}=1\\,.
$$
{{< /hint >}}

{{< details "Proof" close >}}
Considering the last components of the vector $g_i$ when applied to the
autonomized ODE with right hand side $F(\cdot)$, we obtain
$$
t_{0}+h\sum_{j=1}^{i-1}a_{i j}\\,.
$$
For the ERK to be invariant under autonomization, we require that $f$ is evaluated at $t_0 +hc_i$
in the $i$th stage leading to the first condition in aboves Lemma. Similarly, the second condition in
our Lemma follows from the last component of $y_1$, when applying automization on ODE. $\quad\square$
{{< /details >}}


## Consistency requirements for ERKs
{{< hint info >}}
An ERK that is invariant under autonomization with $s$ stages is
consistent of *first order*, if and only if

$$
b_1+\cdots +b_s=1;
$$

it is consistent of *second order*, if and only if in addition we have

$$
b_1c_1+\cdots+b_sc_s = 1/2
$$

it is consistent of *third order*, if and only if in addition we have

$$
\begin{align*}
  b_1c_1^2+\cdots +b_s c_s^2 &= 1/3, \newline
  \sum_{i,j=1}^s b_i a_{ij} c_j &= 1/6;
\end{align*}
$$

it is consistent of *fourth order*, if and only if in addition we have

$$
\begin{align*}
  b_1c_1^3+\cdots +b_s c_s^3 &= 1/4, \newline
  \sum_{i,j=1}^s b_i a_{ij} c^2_j &= 1/12, \newline
  \sum_{i,j,k=1}^s b_i a_{ij} a_{jk} c_k &= 1/24, \newline
  \sum_{i,j=1}^s b_i c_i a_{ij} c_j &= 1/8.
\end{align*}
$$

{{< /hint >}}

**Proof**: missing

**Remark**: Butcher introduced a graph theoretical method for order conditions
based on trees. While this simplifies the process of deriving these conditions for higher
order methods considerably, it is beyond the scope of this course.

## Classical Runge-Kutta method of 4th order
{{< tabs "ForthStageMethodTabs" >}}
{{< tab "Tableau" >}}
{{< hint info >}}
The classical Runge-Kutta method of 4th order is:

$$
%\renewcommand\arraystretch{1.2}
\begin{array}
{c|cccc}
0\newline
\frac{1}{2} & \frac{1}{2}\newline
\frac{1}{2} & 0 & \frac{1}{2} \newline
1 & 0 & 0 & 1 \newline
\hline
& \frac{1}{6} & \frac{2}{6} & \frac{2}{6} & \frac{1}{6}
\end{array}
$$

Like the 3-stage method in Example this formula is based on Simpson’s
quadrature rule, but it uses two approximations for the value at the midpoint of the
interval and is of order 4.
{{< /hint >}}
{{< /tab >}}
{{< tab "Formular" >}}
{{< hint info >}}
The classical Runge-Kutta method of 4th order is:

$$
\begin{align*}
k_1 &= f(t_0, y_0) \newline
k_2 &= f\left(t_0+\frac{1}{2}h,y_0+\frac{1}{2}hk_1\right) \newline
k_3 &= f\left(t_0+\frac{1}{2}h, y_0+\frac{1}{2}hk_2\right)\newline
k_4 &= f(t_0+h, y_0+hk_3) \newline
y_1 &= y_0 + h\left(\frac{1}{6}k_1+\frac{2}{6}k_2+\frac{2}{6}k_3+\frac{1}{6}k_4\right)
\end{align*}
$$

Like the 3-stage method in Example this formula is based on Simpson’s
quadrature rule, but it uses two approximations for the value at the midpoint of the
interval and is of order 4.
{{< /hint >}}
{{< /tab >}}
{{< /tabs >}}

\%missing part

## Butcher barriers
{{< hint danger >}}
The maximal order of an explicit Runge-Kutta method
is limited through the number of stages, or vice versa, a minimum number of stages is required for a certain order. The **Butcher barriers** state that in order to achieve consistency
of order $p$ one requires $s$ stages, where $p$ and $s$ are related as follows:

$$
%\renewcommand\arraystretch{1.2}
\begin{array}
{c|c|c|c|c|c|c|c}
p&1&2&3&4&5&6&7&8\newline\hline
s&p&p&p&p&p+1&p+1&p+2&p+3\newline\hline
\text{\\# cond.}&1&2&4&8&17&37&85&200
\end{array}
$$

The Butcher barriers for $p \geq 9$ are not known yet.
{{< /hint >}}

## Uniform Lipschitz
{{< hint info >}}
Let $f(t,y)$ admit a uniform Lipschitz condition on $[0,T] \times\Omega$ with
$\\{u(t) : t \in [0,T]\\} \subset \Omega$. Then every ERK that is invariant under autonomization
admits a uniform Lipschitz condition on $[0,T] \times\Omega$.
{{< /hint >}}

**Proof** missing

## ERK convergence with order p
{{< hint info >}}
Let $f(t,y)$ admit a uniform Lipschitz condition on $[0,T] \times \Omega$ with
$\\{u(t) : t \in[0,T]\\}\subset\Omega$ and let $F_{h_k} (.,.)$ be an ERK that is invariant under autonomization.
Then consistency of order $p$ implies convergence with order $p$ and

$$
|u_{n}-y_{n}|\leq c e^{L T}h^{p},
$$

where $L$ is the Lipschitz constant of $F_h$ from aboves statement and the constant $c$ is independent of $h$.
{{< /hint >}}

## Show stability of ERK's
{{< hint danger >}}
Important! General approach for showing stability is:

$$
\boxed{f\text{ LIPSCHITZ } + F_h\text{ LIPSCHITZ } = F_h\text{ LOCALLY STABLE }}
$$
{{< /hint >}}


# Estimates of the local error and time step control
The analysis in the last section used a crude a priori bound of the local error based
on high-order derivatives of the right hand side $f(t,u)$. In the case of a complex nonlinear
system, such an estimate is bound to be inefficient, since it involves global bounds on the
derivatives. Obviously, the local error cannot be computed exactly either, because that
would require or imply the knowledge of the exact solution.

In this section, we discuss two methods that allow an estimate of the truncation error
from computed solutions. These estimates are local in nature and therefore usually much
sharper. Thus, they can be used to control the step size, which in turn gives good control
over the balance of accuracy and effort.

The idea is to use two numerical estimates of $u_k$ that converge with different order, so as
to estimate the leading order term of the local error of the lower-order method. Given
this estimate for the local error, we can then devise an algorithm for step-size control that
guarantees that the local error of a one-step method remains below a threshold ε in every
time step.

Nevertheless, in these estimates there is the implicit assumption that the true solution $u$ is
sufficiently regular and the step size is sufficiently small, such that the local error already
’follows’ the theoretically predicted order.

## Algorithm of adaptive step size control

{{< hint info >}}
Let $y_k$ and  $\tilde{y}_k$ be two approximations of
$u_k$ of consistency order $p$ and  $\tilde{p} \geq p + 1$, respectively, and let $\epsilon > 0$ be given.

1. Given $y_{k−1}$, compute $y_k$ and  $\tilde{y}_k$ with time step size $h_k$<br>
(both starting from the value $y_{k−1}$ at $t_{k−1}$).
2. Compute

$$
{h_{\mathrm{opt}}=h_{k}\left({\frac{\varepsilon}{\vert y_{k}-\widetilde y_{k}\vert}}\right)^{\frac{1}{p+1}}.}
$$

3. If $|y_k − \tilde{y}_k| > \epsilon $, and thus $ h\_\mathrm{opt} < h_k$, the time step is rejected: Choose $h_k = h\_\mathrm{opt}$ and
recompute $y_k$ and  $\tilde{y}_k$.

4. If the time step was accepted, let $h_{k+1} = \min(h_\mathrm{opt},T −t_k)$.
5. Increase $k$ by one and return to Step 1.

{{< /hint >}}

**Remark 1**:
When $t_k$ is close to $T$, then the choice $h_{k+1} = h_\mathrm{opt}$ in Step 4, may lead to
$h_{k+2} = T−t_{k+1} ≈ \text{eps} $ (machine epsilon) in the following step. To avoid round-off errors,
it is advisable to choose $h_{k+1} = T −t_k$ already for $T −t_k ≤ ch_\mathrm{opt}$, where $c$ is a moderate
constant of size around $1.1$. This way we avoid that $h_k+2 ≈eps$.

**Remark 2**:
This algorithm controls and equilibrates the local error. It does not control
the accumulated global error. The global error estimate still retains the exponential term.
Global error estimation techniques involve considerably more effort and are beyond the
scope of this course.

The algorithm does not provide an estimate for the leading-order term in the local error
of  $\tilde{y}_k$. However, since it is a higher order approximation than $y_k$, we should use $\tilde{y}_k$ as the
approximation of $u$ at $t_k$ and as the initial value for the next time step.

Let us now discuss two techniques to compute higher-order approximations $\tilde{y}_k$ of $u_k$.

## Extrapolation methods for ERK's
Here, we estimate the local error by a method called Richardson extrapolation (cf.
Numerik 0). It is based on computing two approximations with the same method, but
different step size. In particular, we will use an approximation $y_2$ with two steps of size
$h$ and an approximation $Y_1$ with one step of size $2h$, both starting with the same initial
value at $t_0$.

% missing part