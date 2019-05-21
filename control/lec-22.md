<!--DEBUG-->

{% include mathjax %}

[Назад на головну](../README.md)

---

## Контрольні запитання до леції №22

### 19. Регулярність на нескінченності, перетворення Кельвіна. Гармонічність в нескінченно віддаленій точці.

### 20. Оператор Лапласа в циліндричній та сферичній системах координат.

Якщо замість прямокутних координат $$x, y, z$$ ввести ортогональні криволінійні координати $$q_1, q_2, q_3$$ за допомогою співвідношень

\begin{equation}
	q_i = f_i(x, y, z), \quad i = 1, 2, 3,
\end{equation}

які дозволяють записати обернені перетворення 

\begin{equation}
	\begin{aligned}
		x &= \varphi_1(q_1, q_2, q_3), \newline
		y &= \varphi_2(q_1, q_2, q_3), \newline
		z &= \varphi_3(q_1, q_2, q_3).
	\end{aligned}
\end{equation}

Загальний вигляд оператора Лапласа в криволінійних координатах має вигляд:

\begin{equation}
	\Delta u = \frac{1}{H_1 H_2 H_3} \left( \frac{\partial}{\partial q_1} \left( \frac{H_2 H_3}{H_1} \cdot \frac{\partial u}{\partial q_1} \right) + \frac{\partial}{\partial q_2} \left( \frac{H_1 H_3}{H_2} \cdot \frac{\partial u}{\partial q_2} \right) + \frac{\partial}{\partial q_3} \left( \frac{H_2 H_1}{H_3} \cdot \frac{\partial u}{\partial q_3} \right) \right).
\end{equation}

Де

$$
\begin{equation}
	\left\{
		\begin{aligned}
			H_1^2 &= \left( \frac{\partial \varphi_1}{\partial q_1} \right)^2 + \left( \frac{\partial \varphi_2}{\partial q_1} \right)^2 + \left( \frac{\partial \varphi_3}{\partial q_1} \right)^2, \newline
			H_2^2 &= \left( \frac{\partial \varphi_1}{\partial q_2} \right)^2 + \left( \frac{\partial \varphi_2}{\partial q_2} \right)^2 + \left( \frac{\partial \varphi_3}{\partial q_2} \right)^2, \newline
			H_3^2 &= \left( \frac{\partial \varphi_1}{\partial q_3} \right)^2 + \left( \frac{\partial \varphi_2}{\partial q_3} \right)^2 + \left( \frac{\partial \varphi_3}{\partial q_3} \right)^2.
		\end{aligned}
	\right.
\end{equation}
$$

Для сферичної системи координат $$q_1 = r$$, $$q_2 = \theta$$, $$q_3 = \varphi$$. Формули мають вигляд $$x = r \cdot \sin \theta \cdot \cos \varphi$$, $$y = r \cdot \sin \theta \cdot \sin \varphi$$, $$z = r \cdot \cos \theta$$, $$H_1 = 1$$, $$H_2 = r$$, $$H_3 = r \cdot \sin \theta$$.

Таким чином оператор Лапласа у сферичній системі координат матиме вигляд.

$$
\begin{equation}
	\begin{aligned}
		\Delta_{r, \varphi, \theta} u &= \frac{1}{r^2} \cdot \frac{\partial}{\partial r} \left( r^2 \cdot \frac{\partial u}{\partial r} \right) + \newline
		&\quad + \frac{1}{r^2 \cdot \sin \theta} \cdot \frac{\partial}{\partial \theta} \left( \sin \theta \cdot \frac{\partial u}{\partial \theta} \right) + \newline
		&\quad + \frac{1}{r^2 \cdot \sin^2 \theta} \cdot \frac{\partial^2 u}{\partial \varphi^2}.
	\end{aligned}
\end{equation}
$$

Для циліндричної системи координат $$q_1 = \rho$$, $$q_2 = \varphi$$, $$q_3 = z$$.

Формули мають вигляд $$x = \rho \cdot \cos \varphi$$, $$y = \rho \cdot \sin \varphi$$, $$z = z$$. $$H_1 = 1$$, $$H_2 = \rho$$, $$H_3 = 1$$.

Оператор Лапласа в циліндричній системі координат має вигляд:

\begin{equation}
	\Delta_{\rho, \varphi, z} u = \frac{1}{\rho} \cdot \frac{\partial}{\partial \rho} \left( \rho \cdot \frac{\partial u}{\partial \rho} \right) + \frac{1}{\rho^2} \cdot \frac{\partial^2 u}{\partial \varphi^2} + \frac{\partial^2 u}{\partial z^2}.
\end{equation}

Якщо функція $$u$$ не залежить від змінної $$z$$, то отримуємо полярну систему координат і вираз оператора Лапласа в полярній системі координат:

\begin{equation}
	\Delta_{\rho, \varphi} u = \frac{1}{\rho} \cdot \frac{\partial}{\partial \rho} \left( \rho \cdot \frac{\partial u}{\partial \rho} \right) + \frac{1}{\rho^2} \cdot \frac{\partial^2 u}{\partial \varphi^2}.
\end{equation}

### 23. Принцип максимуму гармонічної функції, наслідки.

**Теорема** (_принцип максимуму гармонічних функцій_). Якщо гармонічна в скінченій області функція досягає у внутрішній точці цієї області свого максимального або мінімального значення, то ця функція є тотожна константа.

_Доведення_. Нехай $$u(x)$$ &mdash; гармонічна функція в обмеженій області $$\Omega$$ і досягає в точці $$x_0 \in \Omega$$ свого максимального значення. Розглянемо кулю $$S(x_0, R_0) \in \Omega$$ максимально великого радіусу.

Оскільки $$u(x_0) = \Max_{x \in \Omega} u(x)$$, то значення функції $$u(x)$$, коли $$x \in U(x_0, R_0)$$ задовольняє нерівності $$u(x) \le u(x_0)$$.

Якщо хоча б у одній точці $$S(x_0, R_0)$$ нерівність строга, тобто $$u(x) < u(x_0)$$, то за рахунок неперервності гармонічних функцій ця нерівність буде збережена і в деякому околі цієї точки, а це означатиме, що 

\begin{equation}
	u(x_0) > \frac{1}{4 \pi R_0^2} \Iint_{S(x_0, R_0)} u(\xi) \diff S_\xi.
\end{equation}

Тобто ми прийшли до протиріччя з припущенням, що $$\exists \xi \in S(x_0, R_0)$$, що $$u(\xi) < u(x_0)$$. Це означає, що $$u(x) = u(x_0)$$, $$x \in S(x_0, R_0)$$.

Оскільки ця рівність має місце для кулі будь-якого радіусу $$R \le R_0$$, то це означає, що $$u(x) \equiv u(x_0)$$ коли $$x \in U(x_0, R_0)$$.

Покажемо тепер, що функція $$u(x) \equiv u(x_0)$$, коли $$x \in \Omega$$.

Для цього виберемо довільну точку $$x^\star \in \Omega$$, то з'єднаємо її з точкою $$x_0$$ ламаною. Побудуємо послідовність куль $$\{U(x_i, R_i)\}_{i=0}^N$$ з такими властивостями: центри куль $$x_i$$, $$i = \overline{1,N}$$ належать ламаній $$x_{i+1} \in U(x_i, R_i) \subset \Omega$$, $$i = \overline{1,N}$$, $$x^\star \in U(x_N, R_N)$$.

Оскільки центр кожної наступної кулі з номером $$i + 1$$, лежить всередині кулі з номером $$i$$, то використовуючи метод математичної індукції, ми можемо встановити властивість: якщо функція $$u(x) \equiv u(x_0)$$ коли $$x \in U(x_i, R_i)$$ то $$u(x) \equiv u(x_0)$$, коли $$x \in U(x_{i + 1}, R_{i + 1})$$. Це означає, що $$u(x) \equiv u(x_0)$$, коли $$x \in U(x_N, R_N)$$. Зокрема, це означає, що $$u(x^\star) \equiv u(x_0)$$. $$\square$$

Наслідки з принципу максимуму:

1. Гармонічна функція відмінна від тотожної константи не досягає в скінченій області ні свого максимального ні свого мінімального значення.

2. Якщо функція гармонічна в області $$\Omega$$ і неперервна в $$\overline\Omega$$, то свої максимальне і мінімальне значення вона приймає на границі області.

3. Якщо функція гармонічна в області $$\Omega$$ і неперервна в $$\overline\Omega$$, то $$\vert u(x) \vert \le \Max_{x \in S} \vert u(x) \vert$$.

4. Нехай $$u(x)$$, $$v(x)$$ &mdash; гармонічні функції в області $$\Omega$$ і має місце нерівність $$\forall x \in S$$: $$u(x) \le v(x)$$, тоді $$\forall x \in \Omega$$: $$u(x) \le v(x)$$.

### 24. Теорема єдиності гармонійної функції із граничними умовами першого та другого роду.

### 25. Теорема єдиності гармонійної функції із граничними умовами третього роду.

---

[Назад на головну](../README.md)
