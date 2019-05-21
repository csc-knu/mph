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
	\label{eq:21.1}
	\Iiint_\Omega ( v(x) \Delta u(x) - u(x) \Delta v(x) ) \diff x = \Iint_S \left( v(x) \cdot \frac{\partial u(x)}{\partial n} - u(x) \cdot \frac{\partial v(x)}{\partial n} \right) \diff S.
\end{equation}

В якості функції $$u(\xi)$$ оберемо довільну функцію $$C^2(\Omega)$$, а у якості $$v$$, фундаментальний розв'язок оператора Лапласа для тривимірного евклідового простору $$\frac{1}{4 \pi \vert x - \xi \vert}$$.

В результаті підстановки цих величин в \eqref{eq:21.1} отримаємо

\begin{equation}
	\begin{aligned}
		& \Iiint_\Omega \left( \frac{1}{4 \pi |x - \xi|} \Delta u(\xi) - u(\xi) \delta (x - \xi) \right) \diff \xi = \newline
		&\quad = \Iint_S \left( \frac{1}{4 \pi |x - \xi|} \cdot \frac{\partial u(\xi)}{\partial n} - u(\xi) \cdot \frac{\partial}{\partial n} \frac{1}{4 \pi |x - \xi|} \right) \diff S_\xi.
	\end{aligned}
\end{equation}

Після обчислення другого доданку в лівій частині можемо записати формулу інтегрального представлення функцій класу $$C^2(\Omega)$$.

\begin{equation}
	\label{eq:21.2}
	\begin{aligned}
		u(x) &= - \Iiint_\Omega \frac{1}{4 \pi |x - \xi|} \Delta (\xi) \diff \xi + \newline
		&\quad + \Iint_S \left( \frac{1}{4 \pi |x - \xi|} \cdot \frac{\partial u(\xi)}{\partial n} - u(\xi) \cdot \frac{\partial n}{\partial n} \frac{1}{4 \pi |x - \xi|} \right) \diff S_\xi.
	\end{aligned}
\end{equation}

У випадку коли функція $$u(x)$$ є гармонічною в області $$\Omega$$ то остання формула прийме вигляд:

\begin{equation}
	u(x) = \Iint_S \left( \frac{1}{4 \pi |x - \xi|} \cdot \frac{\partial u(\xi)}{\partial n} - u(\xi) \cdot \frac{\partial}{\partial n} \frac{1}{4 \pi |x - \xi|} \right) \diff S_\xi.
\end{equation}

---

[Назад на головну](../README.md)
