<!--DEBUG-->

{% include mathjax %}

## Контрольні запитання до леції №21

### 18. Визначення гармонічної функції та її приклади.

Функцію $$u(x)$$ називають _гармонічною в деякій відкритій області_ $$\Omega$$, якщо $$u \in C^{(2)}(\Omega)$$ і $$\Delta u(x) = 0$$, $$x \in \Omega$$, тобто функція є двічі неперервно диференційованим розв'язком рівняння Лапласа.

Функцію $$u(x)$$ називають _гармонічною в деякій точці_, якщо ця функція гармонічна в деякому околі цієї точки.

Функцію $$u(x)$$ називають _гармонічною в деякій замкненій області_, якщо вона гармонічна в деякій більш широкій відкритій області.

З гармонічними функціями у тривимірних і двовимірних областях ми вже зустрічалися, а саме нам відомо, що 

\begin{equation}
	\Delta \frac{1}{2 \pi} \ln \frac{1}{|x - \xi|} = 0, \quad x \ne \xi, \quad x, \xi \in \RR^2,
\end{equation}

і

\begin{equation}
	\Delta \frac{1}{4 \pi |x - \xi|} = 0, \quad x \ne \xi, \quad x, \xi \in \RR^3.
\end{equation}

### 21. Інтегральне представлення функцій класу $$C^2(\Omega)$$ та гармонічних функцій.

Для отримання інтегрального представлення функцій класу $$C^2(\Omega)$$ будемо використовувати другу формулу Гріна для оператора Лапласа:

\begin{equation}
	\begin{aligned}
		& \Iiint_\Omega ( v(x) \Delta u(x) - u(x) \Delta v(x) ) \diff x = \newline
		& \quad = \Iint_S \left( v(x) \cdot \frac{\partial u(x)}{\partial n} - u(x) \cdot \frac{\partial v(x)}{\partial n} \right) \diff S.
	\end{aligned}
\end{equation}

В якості функції $$u(\xi)$$ оберемо довільну функцію $$C^2(\Omega)$$, а у якості $$v$$, фундаментальний розв'язок оператора Лапласа для тривимірного евклідового простору $$\frac{1}{4 \pi \vert x - \xi \vert}$$.

В результаті підстановки цих величин в останню формулу отримаємо

\begin{equation}
	\begin{aligned}
		& \Iiint_\Omega \left( \frac{1}{4 \pi |x - \xi|} \Delta u(\xi) - u(\xi) \delta (x - \xi) \right) \diff \xi = \newline
		&\quad = \Iint_S \left( \frac{1}{4 \pi |x - \xi|} \cdot \frac{\partial u(\xi)}{\partial n} - u(\xi) \cdot \frac{\partial}{\partial n} \frac{1}{4 \pi |x - \xi|} \right) \diff S_\xi.
	\end{aligned}
\end{equation}

Після обчислення другого доданку в лівій частині можемо записати формулу інтегрального представлення функцій класу $$C^2(\Omega)$$.

\begin{equation}
	\begin{aligned}
		u(x) &= - \Iiint_\Omega \frac{1}{4 \pi |x - \xi|} \Delta u(\xi) \diff \xi + \newline
		&\quad + \Iint_S \left( \frac{1}{4 \pi |x - \xi|} \cdot \frac{\partial u(\xi)}{\partial n} - u(\xi) \cdot \frac{\partial n}{\partial n} \frac{1}{4 \pi |x - \xi|} \right) \diff S_\xi.
	\end{aligned}
\end{equation}

У випадку коли функція $$u(x)$$ є гармонічною в області $$\Omega$$ то остання формула прийме вигляд:

\begin{equation}
	u(x) = \Iint_S \left( \frac{1}{4 \pi |x - \xi|} \cdot \frac{\partial u(\xi)}{\partial n} - u(\xi) \cdot \frac{\partial}{\partial n} \frac{1}{4 \pi |x - \xi|} \right) \diff S_\xi.
\end{equation}

### 22. Теорема про середнє значення гармонічної функції.

**Теорема** (_про середнє значення гармонічної функції_). Якщо $$u(x)$$ &mdash; гармонічна функція в кулі і неперервна в замиканні цієї кулі, то значення гармонічної функції в центрі кулі дорівнює середньому арифметичному її значень на сфері, що обмежує кулю.

_Доведення._ Використаємо формулу

\begin{equation}
	u(x) = \Iint_S \left( \frac{1}{4 \pi |x - \xi|} \cdot \frac{\partial u(\xi)}{\partial n} - u(\xi) \cdot \frac{\partial}{\partial n} \frac{1}{4 \pi |x - \xi|} \right) \diff S_\xi.
\end{equation}

в якій в якості поверхні $$S$$ візьмемо сферу радіусу $$R$$ з центром у точці $$x_0$$, і обчислимо значення функції $$u$$ в точці $$x_0$$:

\begin{equation}
	u(x_0) = \Iint_{S(x_0, R)} \left( \frac{1}{4 \pi |x_0 - \xi|} \cdot \frac{\partial u(\xi)}{\partial n} - u(\xi) \cdot \frac{\partial}{\partial n_\xi} \frac{1}{4 \pi |x_0 - \xi|} \right) \diff S_\xi.
\end{equation}
 
Оскільки $$\xi \in S(x_0, R)$$, то $$\frac{1}{4 \pi |x_0 - \xi|} = \frac{1}{4 \pi R}$$, а

\begin{equation}
	\left. \frac{\partial}{\partial n_\xi} \frac{1}{4 \pi |x_0 - \xi|} \right|_{S(x_0, R)} = \frac{1}{4 \pi R^2}.
\end{equation}

Таким чином 

\begin{equation}
	u(x_0) = \frac{1}{4 \pi R} \Iint_{S(x_0, R)} \frac{\partial u(\xi)}{\partial n} \diff S_\xi + \frac{1}{4 \pi R^2} \Iint_{S(x_0, R)} u(\xi) \diff S_\xi.
\end{equation}

Оскільки перший інтеграл дорівнює нулю, то остаточно маємо

\begin{equation}
	u(x_0) = \frac{1}{4 \pi R^2} \Iint_{S(x_0, R)} u(\xi) \diff S_\xi 
\end{equation}

### 32. Методи побудови функції Гріна для оператора Лапласа, на прикладі задачі Діріхле для кулі.

Будемо розглядати граничну задачу

$$
\begin{equation}
	\left\{
		\begin{aligned}
			& \Delta U(P) = 0, \quad |P| < R, \newline
			& \left. U(P) \right|_{|P| = R} = f(P).
		\end{aligned}
	\right.
\end{equation}
$$

Побудуємо функцію Гріна першої граничної задачі оператора Лапласа для кулі. Введемо позначення:

\begin{equation}
	| OP_0 | = r_0, \quad | OP_0' | = r_0', \quad r = | P - P_0 |, \quad r' = | P - P_0' |.
\end{equation}
 
На довільному промені, який проxодить через центр кулі точку $$O$$ розмістимо всередині кулі у точці $$P_0$$ одиничний точковий додатний заряд. Розглянемо точку $$P_0'$$ симетричну точці   відносно сфери.

![](../lectures/img/21-1.png)

Це означає, що обидві точки лежать на одному промені, а їx відстані від центру сфери задовольняють співвідношенню

\begin{equation}
	r_0 \cdot r_0' = R^2.
\end{equation}

В точці $$P_0'$$ розмістимо від'ємний заряд величини $$e = R / r_0$$. 

Функцію Гріна задачі Діріxле для кулі можна записати:

\begin{equation}
	G_1 (P, P_0) = \frac{1}{4\pi} \left( 1 / \sqrt{\rho^2 + r_0^2 - 2 \rho r_0 \cos \gamma} - 1 / \sqrt{R^2 + \frac{\rho^2 r_0^2}{R^2} - 2 \rho r_0 \cos \gamma} \right).
\end{equation}

<!-- Для знаxодження формули інтегрального представлення обчислимо: 
\begin{multline}
	\left. \frac{\partial G_1 (P, P_0)}{\partial n_P} \right|_{P \in S} = \left. \frac{\partial G_1 (P, P_0)}{\partial \rho} \right|_{\rho = R} = \\
	= \frac{1}{4 \pi} \left. \left( - \frac{\rho - r_0 \cos \gamma}{(\rho^2 + r_0^2 - 2 \rho r_0 \cos \gamma)^{3/2}} + \frac{\frac{\rho r_0^2}{R^2} - r_0 \cos \gamma}{\left(\frac{\rho^2 r_0^2}{R^2} + r_0^2 - 2 R r_0 \cos \gamma\right)^{3/2}} \right) \right|_{\rho = R} = \\
	= - \frac{1}{4 \pi R} \cdot \frac{R^2 - r_0^2}{(R^2 + r_0^2 - 2 R r_0 \cos \gamma)^{3/2}}.
\end{multline}

Для запису остаточної формули треба ввести сферичну систему координат. Запишемо через сферичні кути:
\begin{equation}
	\cos \gamma = \frac{\measuredangle (OP, OP_0)}{\rho r_0} = \cos \theta \cos \theta_0 + \sin \theta \sin \theta_0 \cos (\phi - \phi_0).
\end{equation}

Тут $\rho, \phi, \theta$ --- сферичні координати точки $P$, а $r_0, \phi_0, \theta_0$ --- сферичні координати точки $P_0$. \medskip -->

Формула Пуассона для кулі дає розв'язок задачі Діріxле для рывняння Лапласа у такому вигляді:

\begin{equation}
	U(r_0, \phi_0, \theta_0) = \frac{R}{4 \pi} \Int_0^{2 \pi} \Int_0^\pi \frac{(R^2 - r_0^2) \sin \theta f(\phi, \theta) \diff \theta \diff \phi}{(R^2 + r_0^2 - 2 R r_0 \cos \gamma)^{3/2}}.
\end{equation}

### 33. Функція Гріна першої та другої граничної задачі рівняння теплопровідності для півпрямої.

[Назад на головну](../README.md)
