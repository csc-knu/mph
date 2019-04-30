<!--DEBUG-->

{% include mathjax %}

[Назад на головну](../README.md)

---

## Контрольні запитання до леції №19

### 12. Задача Коші для рівняння теплопровідності, представлення розв'язку задачі Коші.

Розглянемо задачу Коші для рівняння теплопровідності:

$$
\begin{eqaution*}
	\left\{
		\begin{aligned}
			& a^2 \Delta u(x, t) - \frac{\partial u(x, t)}{\partial t} = - F(x, t), \quad t > 0, \quad x \in \mathbb{R}^n, \\
			& u(x, 0) = u_0(x).
		\end{aligned}
	\right.
end{equation*}
$$

Формула інтегрального представлення розв'язку задачі Коші для рівняння теплопровідності

$$
u(x, t) = \displaystyle\int\limits_0^t \displaystyle\iiint\limits_{\mathbb{R}^n} F(\xi, \tau) \epsilon(x - \xi, t - \tau) \,\mathrm{d} \xi \,\mathrm{d} \tau + \displaystyle\iiint\limits_{\mathbb{R}^n} \varepsilon(x - \xi, t) u_0(\xi) \,\mathrm{d} \xi.
$$

### 13. Задача Коші для рівняння коливання струни, представлення розв'язку, формула Даламбера.

Розглянемо задачу Коші для рівняння коливання струни

$$
\begin{eqaution*}
	\left\{
		\begin{aligned}
			& a^2 \frac{\partial^2 u(x, t)}{\partial x^2} - \frac{\partial^2 u(x, t)}{\partial t^2} = - F(x, t), \quad t > 0, \quad x \in \mathbb{R}^1, \\
			& u(x, 0) = u_0(x), \\
			& \frac{\partial u(x, 0)}{\partial t} = v_0(x).
		\end{aligned}
	\right.
end{equation*}
$$

Формула д'Аламбера: розв'язок задачі Коші для рівняння коливання струни:

$$
\begin{equation*}
	\begin{aligned}
		u(x, t) &= \frac{u_0(x - at) + u_0(x + at)}{2} + \\
		& \quad + \frac{1}{2a} \displaystyle\int\limits_{x - at}^{x + at} v_0(\xi) \,\mathrm{d} \xi + \frac{1}{2a} \displaystyle\int\limits_0^t \displaystyle\int\limits_{x - a(t - \tau)}^{x + a(t - \tau)} F(\xi, \tau) \,\mathrm{d} \xi \,\mathrm{d} \tau.
	\end{aligned}
\end{equation*}
$$

### 14. Задача Коші для рівняння коливання мембрани, представлення розв'язку, формула Пуассона.

Будемо розглядати задачу Коші для двовимірного хвильового рівняння:

$$
\begin{eqaution*}
	\left\{
		\begin{aligned}
			& a^2 \Delta u(x, t) - u_{tt}(x, t) = -F(x, t), \quad t > 0, \quad x \in \mathbb{R}^2, \\
			& u(x, 0) = u_0(x), \\
			& u_t(x, 0) = v_0.
		\end{aligned}
	\right.
end{equation*}
$$

формула Пуассона: розв'язок задачі Коші коливання мембрани

$$
\begin{equation*}
	\begin{aligned}
		u(x, t) &= \frac{1}{2 a \pi} \displaystyle\int\limits_0^t \displaystyle\iint\limits_{\vert\xi - x\vert < a (t - \tau)} \frac{F(\xi, \tau) \,\mathrm{d} \xi \,\mathrm{d} \tau}{\sqrt{a^2 (t - \tau)^2 - \vert\xi - x\vert^2}} + \\
		& \quad + \frac{\partial}{\partial t} \displaystyle\iint\limits_{\vert\xi - x\vert < a t} \frac{u_0(\xi) \,\mathrm{d} \xi}{2 a \pi \sqrt{a^2 t^2 - \vert\xi - x\vert^2}} + \\
		& \quad + \frac{1}{2 a \pi} \displaystyle\iint\limits_{\vert\xi - x\vert < a t} \frac{v_0(\xi) \,\mathrm{d} \xi}{\sqrt{a^2 t^2 - \vert x - \xi\vert^2}}.
	\end{aligned}
\end{equation*}
$$

---

[Назад на головну](../README.md)
