<!--DEBUG-->

{% include mathjax %}

[Назад на головну](../README.md)

---

## Контрольні запитання до леції №20

### 10. Визначення функції Гріна основних крайових задач для параболічного рівняння. Представлення розв'язку. 

Будемо розглядати граничні задачі для рівняння теплопровідності:

\begin{equation}
	\left\{
		\begin{aligned}
			& a^2 \Delta u(x, t) - \frac{\partial u(x,t)}{\partial t} = - F(x, t), \newline
			& u(x, 0) = u_0(x), \newline
			& \left. \ell_i u(x, t) \right|_{x \in S} = f(x, t), \quad i = 1, 2, 3.
		\end{aligned}
	\right.
\end{equation}

для $$x \in \Omega$$, $$t > 0$$.

Тут 

\begin{align}
	\left. \ell_1 u(x, t) \right|_{x \in S} &= \left. u(x, t) \right|_{x \in S}, \newline
	\left. \ell_2 u(x, t) \right|_{x \in S} &= \left. \frac{\partial u(x, t)}{\partial n} \right|_{x \in S}, \newline
	\left. \ell_3 u(x, t) \right|_{x \in S} &= \left. \frac{\partial u(x, t)}{\partial n} + \alpha(x, t) \cdot u(x, t) \right|_{x \in S}
\end{align}

&mdash; оператори граничних умов першого, другого, або третього роду.

**Визначення** функції Гріна рівняння теплопровідності: Функцію $$E_i (x, \xi, t - \tau)$$ будемо називати _функцією Гріна першої, другої або третьої граничної задачі рівняння теплопровідності_ в області $$\Omega$$ з границею $$S$$ для $$t > 0$$, якщо вона є розв'язком настуної граничної задачі:

\begin{equation}
	\left\{
		\begin{aligned}
			& a^2 \Delta_x E_i (x, \xi, t - \tau) - \frac{\partial E_i(x, \xi, t - \tau)}{\partial t} = - \delta(x - \xi, t - \tau), \newline
			& \left. E_i(x, \xi, t - \tau) \right|_{t - \tau \le 0} = 0, \newline
			& \left. \ell_i E_i (x, \xi, t - \tau) \right|_{x \in S} = 0, \quad i = 1, 2, 3.
		\end{aligned}
	\right.
\end{equation}

для $$x \in \Omega$$, $$t > 0$$.

Еквівалентне визначення можна надати у вигляді: Функцію $$E_i (x, \xi, t - \tau)$$ будемо називати _функцією Гріна першої, другої або третьої граничної задачі рівняння теплопровідності_ в області $$\Omega$$ з границею $$S$$ для $$t > 0$$, якщо вона може бути представлена у вигляді

\begin{equation}
	E_i(x, \xi, t - \tau) = \epsilon(x - \xi, t - \tau) + \omega_i(x, \xi, t - \tau),
\end{equation}

де перший доданок є фундаментальним розв'язком оператора теплопровідності, а другий є розв'язком наступної граничної задачі

\begin{equation}
	\left\{
		\begin{aligned}
			& a^2 \Delta_x \omega_i (x, \xi, t - \tau) - \frac{\partial \omega_i(x, \xi, t - \tau)}{\partial t} = - \delta(x - \xi, t - \tau), \newline
			& \left. \omega_i(x, \xi, t - \tau) \right|_{t - \tau \le 0} = 0, \newline
			& \left. \ell_i \omega_i (x, \xi, t - \tau) \right|_{x \in S} = -\left.\ell_i \epsilon_i(x - \xi, t - \tau)\right|_{x \in S} \quad i = 1, 2, 3.
		\end{aligned}
	\right.
\end{equation}

для $$x \in \Omega$$, $$t > 0$$.

Враховуючи відповідні граничні умови, яким задовольняє розв'язок на границі поверхні $$S$$ отримаємо для першої граничної задачі:

\begin{equation}
	\begin{aligned}
		u(x, t) &= \Int_0^t \Iiint_\Omega E_1(x, \xi, t - \tau) F(\xi, \tau) \diff \xi \diff \tau + \newline
		& \quad + \Iiint_\Omega E_1(x, \xi, t) u_0(\xi) \diff \xi - \newline
		& \quad - a^2 \Int_0^t \Iint_S \left( \frac{\partial E_1(x, \xi, t - \tau)}{\partial n_\xi} f(\xi, \tau)\right) \diff S_\xi \diff \tau.
	\end{aligned}
\end{equation}

Для другої та третьої граничних задач отримаємо 

\begin{equation}
	\begin{aligned}
		u(x, t) &= \Int_0^t \Iiint_\Omega E_i(x, \xi, t - \tau) F(\xi, \tau) \diff \xi \diff \tau + \newline
		& \quad + \Iiint_\Omega E_i(x, \xi, t) u_0(\xi) \diff \xi + \newline
		& \quad + a^2 \Int_0^t \Iint_S E_i(x, \xi, t - \tau) f(\xi, \tau) \diff S_\xi \diff \tau.
	\end{aligned}
\end{equation}

### 11. Визначення функції Гріна основних крайових задач для гіперболічного рівняння. Представлення розв'язку. 

Будемо розглядати граничні задачі для хвильового рівняння:

\begin{equation}
	\left\{
		\begin{aligned}
			& a^2 \Delta u(x, t) - \frac{\partial^2 u(x, t)}{\partial t^2} = -F(x, t), \newline
			& u(x, 0) = u_0(x), \newline
			& \frac{\partial u(x, 0)}{\partial t} = v_0(x), \newline
			& \left. \ell_i u(x, t) \right|_{x \in s} = f(x, t), \quad i = 1, 2, 3.
		\end{aligned}
	\right.
\end{equation}

**Визначення** функції Гріна хвильового рівняння: Функцію $$\Theta_i(x, \xi, t - \tau)$$ будемо називати функцією Гріна першої, другої або третьої граничної задачі хвильового рівняння в області $$\Omega$$ з границею $$S$$ і $$t > 0$$, якщо вона є розв'язком наступної граничної задачі:

\begin{equation}
	\left\{
		\begin{aligned}
			& a^2 \Delta_x \Theta_i(x, \xi, t - \tau) - \frac{\partial^2 \Theta_i(x, \xi, t - \tau)}{\partial t^2} = - \delta(x - \xi) \delta(t - \tau), \newline
			& \left. \Theta_i(x, \xi, t - \tau) \right|_{t - \tau \le 0} = 0, \newline
			& \left. \frac{\partial \Theta_i(x, \xi, t - \tau)}{\partial t} \right|_{t - \tau \le 0} = 0, \newline
			& \left. \ell_i \Theta_i(x, \xi, t - \tau) \right|_{x \in S} = 0, \quad i = 1, 2, 3.
		\end{aligned}
	\right.
\end{equation}

Еквівалентне визначення можна надати у вигляді: Функцію $$\Theta_i(x, \xi, t - \tau)$$ будемо називати функцією Гріна першої, другої або третьої граничної задачі хвильового рівняння в області $$\Omega$$ з границею $$S$$ і $$t > 0$$, якщо вона може бути представлена у вигляді

\begin{equation}
	\Theta_i(x, \xi, t - \tau) = \psi(x - \xi, t - \tau) + \theta_i(x, \xi, t - \tau),
\end{equation}

де перший доданок є фундаментальним розв'язком хвильового оператора, а другий є розв'язком наступної граничної задачі:

\begin{equation}
	\left\{
		\begin{aligned}
			& a^2 \Delta_x \theta_i(x, \xi, t - \tau) - \frac{\partial^2 \theta_i(x, \xi, t - \tau)}{\partial t^2} = 0, \newline
			& \left. \theta_i(x, \xi, t - \tau) \right|_{t - \tau \le 0} = 0, \newline
			& \left. \frac{\partial \theta_i(x, \xi, t - \tau)}{\partial t} \right|_{t - \tau \le 0} = 0, \newline
			& \left. \ell_i \theta_i(x, \xi, t - \tau) \right|_{x \in S} = - \left. \ell_i \psi_i(x, \xi, t - \tau) \right|_{x \in S}, \quad i = 1, 2, 3.
		\end{aligned}
	\right.
\end{equation}

Розв'язком першої граничної задачі для хвильового рівняння є 

\begin{equation}
	\begin{aligned}
		u(x, t) &= \Int_0^t \Iiint_\Omega \Theta_1(x, \xi, t - \tau) F(\xi, \tau) \diff \xi \diff \tau + \newline
		& \quad + \Iiint_\Omega \Theta_1(x, \xi, t) v_0(\xi), \diff \xi - \newline
		& \quad - \Iiint_\Omega \left. \frac{\partial \Theta_1(x, \xi, t - \tau)}{\partial \tau} \right|_{\tau = 0} u(\xi) \diff \xi - \newline
		& \quad - a^2 \Int_0^t \Iint_S \left( \frac{\partial \Theta_1(x, \xi, t - \tau)}{\partial n_\xi} f(\xi, \tau) \right) \diff S_\xi \diff \tau.
	\end{aligned}
\end{equation}

Розв'язком другої і третьої граничних задач для хвильового рівняння є 

\begin{equation}
	\begin{aligned}
		u(x, t) &= \Int_0^t \Iiint_\Omega \Theta_i(x, \xi, t - \tau) F(\xi, \tau) \diff \xi \diff \tau + \newline
		& \quad + \Iiint_\Omega \Theta_i(x, \xi, t) v_0(\xi), \diff \xi - \newline
		& \quad - \Iiint_\Omega \left. \frac{\partial \Theta_1(x, \xi, t - \tau)}{\partial \tau} \right|_{\tau = 0} u(\xi) \diff \xi - \newline
		& \quad - a^2 \Int_0^t \Iint_S \Big( \Theta_i(x, \xi, t - \tau) f(\xi, \tau) \Big) \diff S_\xi \diff \tau.
	\end{aligned}
\end{equation}

---

[Назад на головну](../README.md)
