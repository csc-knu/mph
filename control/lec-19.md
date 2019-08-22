<!--DEBUG-->

{% include mathjax %}

## Контрольні запитання до леції №19

### 9. Визначення функції Гріна основних крайових задач для еліптичного рівняння представлення розв'язку. 

При розв'язанні задач Коші для рівняння теплопровідності та хвильового рівняння ми використовували фундаментальний розв'язок відповідного оператора, який дозволяв врахувати вплив вільного члена рівняння та початкових умов. Для розв'язання граничних задач, для яких розв'язок треба шукати в деякій обмеженій області на границі якої повинні виконуватися деякі граничні умови, треба використовувати спеціальні фундаментальні розв'язки. Крім того ці спеціальні фундаментальні розв'язки повинні задовольняти однорідним граничним умовам. Такі спеціальні фундаментальні розв'язки отримали назву функцій Гріна граничної задачі певного роду для відповідного диференціального рівняння.

Будемо розглядати граничні задачі для рівняння Гельмгольца:

$$
\begin{equation}
	\left\{
		\begin{aligned}
			& (\Delta + k^2) u(x) = - F(x), \quad x \in \Omega, \newline
			& \left. \ell_i u(x) \right|_{x \in S} = f(x), \quad i = 1, 2, 3.
		\end{aligned}
	\right.
\end{equation}
$$

Використаємо позначення для граничних операторів:

$$
\begin{align}
	\left. \ell_1 u(x) \right|_{x \in S} &= \left. u(x) \right|_{x \in S}, \newline
	\left. \ell_2 u(x) \right|_{x \in S} &= \left. \frac{\partial u(x)}{\partial n} \right|_{x \in S}, \newline
	\left. \ell_3 u(x) \right|_{x \in S} &= \left. \frac{\partial u(x)}{\partial n} + \alpha(x) u(x) \right|_{x \in S},
\end{align}
$$

&mdash; граничні умови першого, другого або третього роду. Зауважимо, що в найпростішому випадку в кожній точці границі виконується умова першого, другого або третього роду, у зв'язку з чим і граничні задачі називають першою, другою або третьою для рівняння Гельмгольца.

**Визначення** функції Гріна:

Функцію $$G_i^k(x, \xi)$$ будемо називати _функцією Гріна_ першої другої або третьої граничної задачі в області $$\Omega$$ з границею $$S$$ оператора Гельмгольца, якщо ця функція є розв'язком граничної задачі:

$$
\begin{equation}
	\left\{
		\begin{aligned}
			& (\Delta_x + k^2) G_i^k(x, \xi) = - \delta(x - \xi), \quad x, \xi \in \Omega, \newline
			& \left. \ell_i G_i^k(x, \xi) \right|_{x \in S} = 0, \quad i = 1, 2, 3.
		\end{aligned}
	\right.
\end{equation}
$$

Оскільки функція Гріна задовольняє рівняння з такою ж правою частиною як і фундаментальний розв'язок (лише зі здвигом на $$\xi$$), то для визначення функції Гріна можна надати наступне еквівалентне визначення:

Функцію $$G_i^k(x, \xi)$$ будемо називати функцією Гріна першої другої або третьої граничної задачі в області $$\Omega$$ з границею $$S$$ оператора Гельмгольца, якщо ця функція  може бути представлена у вигляді

\begin{equation}
	G_i^k(x, \xi) = q_\pm^k(x - \xi) + g_i^k(x, \xi),
\end{equation}

де $$q_\pm^k(x - \xi)$$ є фундаментальним розв'язком оператора Гельмгольца, а функція $$g_i^k$$ задовольняє граничній задачі: 

$$
\begin{equation}
	\left\{
		\begin{aligned}
			& (\Delta_x + k^2) g_i^k(x, \xi) = - \delta(x - \xi), \quad x, \xi \in \Omega, \newline
			& \left. \ell_i g_i^k(x, \xi) \right|_{x \in S} = - \left. \ell_i q_\pm^k(x) \right|_{x \in S}, \quad i = 1, 2, 3.
		\end{aligned}
	\right.
\end{equation}
$$

Проміжну формулу можна конкретизувати для кожної з трьох граничних задач:

- Нехай $$i = 1$$:

	\begin{equation}
		u(x) = \Iiint_\Omega G_1^k(x, \xi) F(\xi) \diff \xi - \Iint_S \left( \frac{\partial G_1^k(x, \xi)}{\partial n_\xi} f(\xi) \right) \diff S_\xi.
	\end{equation}

- Нехай $$i = 2$$:

	\begin{equation}
		u(x) = \Iiint_\Omega G_2^k(x, \xi) F(\xi) \diff \xi + \Iint_S \left( G_2^k(x, \xi) f(\xi) \right) \diff S_\xi.
	\end{equation}

- У випадку $$i = 3$$:
	
	\begin{equation}
		u(x) = \Iiint_\Omega G_3^k(x, \xi) F(\xi) \diff \xi + \Iint_S \left( G_3^k(x, \xi) f(\xi) \right) \diff S_\xi.
	\end{equation}


### 12. Задача Коші для рівняння теплопровідності, представлення розв'язку задачі Коші.

Розглянемо задачу Коші для рівняння теплопровідності:

$$
\left\{
	\begin{aligned}
		& a^2 \Delta u(x, t) - \frac{\partial u(x, t)}{\partial t} = - F(x, t), \quad t > 0, \quad x \in \mathbb{R}^n, \newline
		& u(x, 0) = u_0(x).
	\end{aligned}
\right.
$$

Формула інтегрального представлення розв'язку задачі Коші для рівняння теплопровідності

$$
u(x, t) = \displaystyle\int\limits_0^t \displaystyle\iiint\limits_{\mathbb{R}^n} F(\xi, \tau) \epsilon(x - \xi, t - \tau) \,\mathrm{d} \xi \,\mathrm{d} \tau + \displaystyle\iiint\limits_{\mathbb{R}^n} \varepsilon(x - \xi, t) u_0(\xi) \,\mathrm{d} \xi.
$$

### 13. Задача Коші для рівняння коливання струни, представлення розв'язку, формула Даламбера.

Розглянемо задачу Коші для рівняння коливання струни

$$
\left\{
	\begin{aligned}
		& a^2 \frac{\partial^2 u(x, t)}{\partial x^2} - \frac{\partial^2 u(x, t)}{\partial t^2} = - F(x, t), \quad t > 0, \quad x \in \mathbb{R}^1, \newline
		& u(x, 0) = u_0(x), \newline
		& \frac{\partial u(x, 0)}{\partial t} = v_0(x).
	\end{aligned}
\right.
$$

Формула д'Аламбера: розв'язок задачі Коші для рівняння коливання струни:

$$
\begin{aligned}
	u(x, t) &= \frac{u_0(x - at) + u_0(x + at)}{2} + \newline
	& \quad + \frac{1}{2a} \displaystyle\int\limits_{x - at}^{x + at} v_0(\xi) \,\mathrm{d} \xi + \frac{1}{2a} \displaystyle\int\limits_0^t \displaystyle\int\limits_{x - a(t - \tau)}^{x + a(t - \tau)} F(\xi, \tau) \,\mathrm{d} \xi \,\mathrm{d} \tau.
\end{aligned}
$$

### 14. Задача Коші для рівняння коливання мембрани, представлення розв'язку, формула Пуассона.

Будемо розглядати задачу Коші для двовимірного хвильового рівняння:

$$
\left\{
	\begin{aligned}
		& a^2 \Delta u(x, t) - u_{tt}(x, t) = -F(x, t), \quad t > 0, \quad x \in \mathbb{R}^2, \newline
		& u(x, 0) = u_0(x), \newline
		& u_t(x, 0) = v_0.
	\end{aligned}
\right.
$$

формула Пуассона: розв'язок задачі Коші коливання мембрани

$$
\begin{aligned}
	u(x, t) &= \frac{1}{2 a \pi} \displaystyle\int\limits_0^t \displaystyle\iint\limits_{\vert\xi - x\vert < a (t - \tau)} \frac{F(\xi, \tau) \,\mathrm{d} \xi \,\mathrm{d} \tau}{\sqrt{a^2 (t - \tau)^2 - \vert\xi - x\vert^2}} + \newline
	& \quad + \frac{\partial}{\partial t} \displaystyle\iint\limits_{\vert\xi - x\vert < a t} \frac{u_0(\xi) \,\mathrm{d} \xi}{2 a \pi \sqrt{a^2 t^2 - \vert\xi - x\vert^2}} + \newline
	& \quad + \frac{1}{2 a \pi} \displaystyle\iint\limits_{\vert\xi - x\vert < a t} \frac{v_0(\xi) \,\mathrm{d} \xi}{\sqrt{a^2 t^2 - \vert x - \xi\vert^2}}.
\end{aligned}
$$
