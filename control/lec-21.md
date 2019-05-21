<!--DEBUG-->

{% include mathjax %}

[Назад на головну](../README.md)

---

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
	u(x) = \Iint_S \left( \frac{1}{4 \pi |x - \xi|} \cdot \frac{\partial u(\xi)}{\partial n} - u(\xi) \cdot \frac{\partial}{\partial n} \frac{1}{4 \pi |x - \xi|} \right) \diff S_\xi?
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

---

[Назад на головну](../README.md)
