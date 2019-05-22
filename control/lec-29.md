<!--DEBUG-->

{% include mathjax %}

## Контрольні запитання до леції №29

### 67. Нерівність Пуанкаре-Фрідріхса, теорема Релліха.

Нерівність Пуанкаре-Фрідріхса: $$\forall u \in \overset{\circ}{W}_2^1(\Omega)$$, де $$\Omega \subseteq \RR^n$$, $$\text{dim} \Omega \ne \infty$$:

\begin{equation}
	\Int_\Omega u^2(x) \diff x \le C_\Omega^2 \Int_\Omega \Sum_{i = 1}^n u_{x_i}^2 \diff x,
\end{equation}

або $$\|u\|_{L_2(\Omega)}^2 \le C_\Omega^2 \|u_x\|_{L_2(\Omega)}^2$$, тобто норма

\begin{equation}
	\|u_x\|_{L_2(\Omega)}^2 = \Int_\Omega \Sum_{i = 1}^n u_{x_i}^2 \diff x.
\end{equation}

**Теорема** (_Релліха_): довільна обмежена множина елементів простору $$W_2^1(\Omega)$$ є компакт в просторі $$L_2(\Omega)$$.

### 68. Еквівалентність норм у просторі $$W_2^1(\Omega)$$ (норма введена через квадратичну форму).

**Теорема** (_про еквівалентність норм у просторі $$W_2^1(\Omega)$$)_: Якщо матриця $$P(x)$$ додатньо визначена, тобто для кожного комплексного вектора $$\xi = (\xi_1, \ldots, \xi_n)$$ і для усіх $$x \in \overline\Omega$$:

\begin{equation}
	\Sum_{i,j=1}^n p_{i,j} \xi_i \overline{\xi_j} \ge \gamma \cdot \|\xi\|^2
\end{equation}

з якоюсь сталою постійною $$\gamma$$, функція $$a(x) \ge 0$$, $$x \in \overline{\Omega}$$, $$\sigma(x) \ge 0$$, $$x \in S$$, та або $$a(x) \not\equiv 0$$, або $$\sigma(x)\not\equiv 0$$, то білінійна форма

\begin{equation}
	W (f, g) = \Int_\Omega \left( \Sum_{i,j=1}^n p_{i,j} \cdot f_{x_i} \cdot \overline{g_{x_j}} + a(x) \cdot f \cdot \ovelrine{g} \right) \diff x + \Int_S (\sigma(x) \cdot f \cdot \ovelrine{g}) \diff S
\end{equation}

визначає в $$W_2^1(\Omega)$$ скалярний добуток еквівалентний скалярному добутку 

\begin{equation}
	\langle f, g \rangle_{W_2^1(\Omega)} = \Int_\Omega \left( \langle \nabla f, \nabla \overline{g} \rangle + f \cdot \overline{g} \right) \diff x.
\end{equation}

Це фактично означає, що існують такі константи $$C_1, C_2$$, що має місце нерівність

\begin{equation}
	C_2^2 \|f\|_{W_2^1(\Omega)}^2 \le W(f, f) \le C_1^2 \|f\|_{W_2^1(\Omega)}^2.
\end{equation}

Таким чином, ця теорема дозволяє ввести норму у просторі $$W_2^1(\Omega)$$: $$\|f\|_\star^2 = W(f, f)$$ еквівалентну звичайній нормі в цьому просторі.


---

[Назад на головну](../README.md)
