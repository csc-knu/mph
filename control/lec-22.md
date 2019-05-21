<!--DEBUG-->

{% include mathjax %}

[Назад на головну](../README.md)

---

## Контрольні запитання до леції №22

### 19. Регулярність на нескінченності, перетворення Кельвіна. Гармонічність в нескінченно віддаленій точці.

#### Перетворення Кельвіна

Нехай функція $$u$$ гармонічна за межами кулі $$U(0, R)$$, тоді функцію

\begin{equation}
	v(y) = \left( \frac{R}{|y|} \right)^{n - 2} \cdot u \left( \frac{R^2}{|y|^2} \cdot y \right).
\end{equation}

(тут використовується перетворення аргументу обернених радіус векторів $$x = R^2 / \vert y \vert^2 \cdot y$$ або обернене $$y = R^2 / \vert x \vert^2 \cdot x$$) будемо називати перетворенням Кельвіна гармонічної функції $$u(x)$$ в $$n$$-вимірному евклідовому просторі.

В подальшому будемо вважати, що $$R = 1$$, цього завжди можна досягти шляхом зміни масштабу. Покажемо, що для $$n = 3$$ перетворення Кельвіна $$v(y)$$ гармонічної функції $$u(x)$$ є гармонічною функцією аргументу $$y$$.

<!-- Легко показати, що перший доданок в операторі Лапласа може бути записаний у вигляді  

\begin{equation}
	\frac{1}{r^2} \cdot \frac{\partial}{\partial r} \left( r^2 \cdot \frac{\partial u}{\partial r} \right) = \frac{1}{r} \cdot \frac{\partial^2 (r u)}{\partial r^2}.
\end{equation}
 -->
Таким чином при $$n = 3$$, $$R = 1$$ перетворення Кельвіна має вигляд 

\begin{equation}
	v(y) = \frac{1}{|y|} \cdot u \left( \frac{y}{|y|^2} \right).
\end{equation}

Оскільки $$y = x / \vert x \vert^2$$, а $$x = y / \vert y \vert^2$$, то $$\vert y \vert = 1 / \vert x \vert$$, або $$v(y) = \vert x \vert \cdot u(x)$$.

Покажемо, що функція $$v(r', \theta, \varphi) = r \cdot u(r, \theta, \varphi)$$. Де $$r = 1 / r'$$, задовольняє рівнянню Лапласа, якщо $$u(r, \theta, \varphi)$$ &mdash; гармонічна функція.

<!-- Дійсно маємо 

$$
\begin{equation}
	\begin{aligned}
		r \cdot \Delta_{r, \theta, \varphi} u &= \frac{\partial^2 (r u)}{\partial r^2} + \frac{1}{r \cdot \sin \theta} \left( \frac{\partial}{\partial \theta} \left( \sin \theta \cdot \frac{\partial u}{\partial \theta} \right) + \frac{1}{\sin \theta} \cdot \frac{\partial^2 u}{\partial \varphi^2} \right) = \newline
		&= \frac{\partial^2 v}{\partial r^2} + \frac{1}{r^2 \cdot \sin \theta} \left( \frac{\partial}{\partial \theta} \left( \sin \theta \cdot \frac{\partial v}{\partial \theta} \right) + \frac{1}{\sin \theta} \cdot \frac{\partial^2 v}{\partial \varphi^2} \right) = \newline
		&= (r')^2 \cdot \frac{\partial}{\partial r'} \left( (r')^2 \cdot \frac{\partial v}{\partial r'} \right) + \frac{(r')^2}{\sin \theta} \cdot \left( \frac{\partial}{\partial \theta} \left( \sin \theta \cdot \frac{\partial v}{\partial \theta} + \frac{1}{\sin \theta} \cdot \frac{\partial^2 v}{\oartial \varphi^2} \right) \right) = \newline
		&= (r')^4 \cdot \Delta_{r', \varphi, \theta} \cdot v(r', \theta, \varphi) = 0.
	\end{aligned}
\end{equation}
$$

При отриманні останньої рівності було враховано що

\begin{equation}
	\frac{\partial v}{\partial r} = -(r')^2 \cdot \frac{\partial v}{\partial r'}, \quad
	\frac{\partial^2 v}{\partial r^2} = (r')^2 \cdot \frac{\partial}{\partial r'} \left( (r')^2 \cdot \frac{\partial v}{\partial r'} \right).
\end{equation} -->

Аналогічно тому, як було показана гармонічність $$v(y) = 1 / \vert y \vert \cdot u (y / \vert y \vert^2)$$ у тривимірному евклідовому просторі, можна показати гармонічність функції $$v(y) = u( y / \vert y \vert^2)$$ у двовимірному евклідовому просторі.

#### Гармонічність в нескінченно віддаленій точці та поведінка гармонічних функцій на нескінченості.

Будемо говорити, що функція $$u(x)$$ є _гармонічною функцією в нескінченно віддаленій точці_, якщо функція

\begin{equation}
	v(y) = \begin{cases}
		1 / |y| \cdot u (y / |y|^2), & n = 3, \newline
		u (y / |y|^2), & n = 2,
	\end{cases}
\end{equation}

є гармонічною функцією в точці нуль.

Легко бачити, що

\begin{equation}
	v(y) = \begin{cases}
		|x| \cdot u(x), & n = 3, \newline
		u(x), & n = 2.
	\end{cases}
\end{equation}

**Теорема** (_про поведінку гармонічних функцій в нескінченно віддалені точці в просторі_). Якщо при $$n = 3$$ функція $$u(x)$$ гармонічна в нескінченно віддаленій точці, то при $$\vert x \vert \to \infty$$ функція прямує до нуля не повільніше $$1 / \vert x \vert$$, а частинні похідні ведуть себе як $$D^\alpha u(x) = O(1 / \vert x \vert^{1 + \vert \alpha \vert})$$.

**Теорема** (_про поведінку гармонічних функцій в нескінченно віддалені точці на площині_). Якщо при $$n = 2$$ функція $$u(x)$$ гармонічна в нескінченно віддаленій точці, то при $$\vert x \vert \to \infty$$ функція $$u(x)$$ обмежена, а частинні похідні ведуть себе як $$D^\alpha u(x) = O(1 / \vert x \vert^{1 + \vert \alpha \vert})$$.

Гармонічні функції які мають поведінку на нескінченості визначену теоремами для тривимірного і двовимірного просторів називають регулярними на нескінченості гармонічними функціями, а відповідні оцінки умовами регулярності на нескінченості.

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

$$
\begin{equation}
	\begin{aligned}
	\Delta u &= \frac{1}{H_1 H_2 H_3} \left( \frac{\partial}{\partial q_1} \left( \frac{H_2 H_3}{H_1} \cdot \frac{\partial u}{\partial q_1} \right) \right. + \newline
	&\quad + \frac{\partial}{\partial q_2} \left( \frac{H_1 H_3}{H_2} \cdot \frac{\partial u}{\partial q_2} \right) + \newline
	&\quad + \left. \frac{\partial}{\partial q_3} \left( \frac{H_2 H_1}{H_3} \cdot \frac{\partial u}{\partial q_3} \right) \right).
	\end{aligned}
\end{equation}
$$

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

$$
\begin{equation}
	\begin{aligned}
		\Delta_{\rho, \varphi, z} u &= \frac{1}{\rho} \cdot \frac{\partial}{\partial \rho} \left( \rho \cdot \frac{\partial u}{\partial \rho} \right) + \newline
		&\quad + \frac{1}{\rho^2} \cdot \frac{\partial^2 u}{\partial \varphi^2} + \frac{\partial^2 u}{\partial z^2}.
	\end{aligned}
\end{equation}
$$

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
