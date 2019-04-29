<!--DEBUG-->

{% include mathjax %}

[Назад на головну](../README.md)

---

## Контрольні запитання до леції №18

### 8. Визначення фундаментального розв'язку основних диференціальних операторів.

Нехай $$L$$ --- диференціальний оператор. Розглянемо диференціальне рівняння

$$
L u = f(x).
$$

_Узагальненим розв'язком_ цього рівняння будемо називати будь-яку узагальнену функцію $$u$$, яка задовольняє це рівняння в розумінні виконання рівності:

$$
\langle L u, \varphi \rangle = \langle f, \varphi \rangle
$$

для довільної $$\varphi \in D(\Omega)$$.

Особливу роль в математичній фізиці відіграють фундаментальні розв'язки для основних диференціальних операторів математичної фізики: (Гельмгольца, теплопровідності, хвильового), які представляють собою узагальнені розв'язки неоднорідних диференціальних рівнянь:

$$
\begin{align*}
	(\Delta + k^2) q_k(x) &= - \delta(x), \\
	\left( a^2 \Delta - \frac{\partial}{\partial t} \right) \varepsilon(x, t) &= - \delta(x, t), \\
	\left( a^2 \Delta - \frac{\partial^2}{\partial t^2} \right) \psi(x, t) &= - \delta(x, t)
\end{align*}
$$

Узагальнені функції $$q_k(x)$$, $$\varepsilon(x, t)$$, $$\psi(x, t)$$ називаються _фундаментальними розв'язками_ оператора Гельмгольца, теплопровідності, хвильового відповідно, якщо вони задовольняють відповідні рівняння як узагальнені функції:

$$
\begin{align*}
	\displaystyle\iiint\limits_{\mathbb{R}^n} q_k(x) (\Delta + k^2) \varphi(x) \, \mathrm{d} x &= - \varphi(0), \\
	\displaystyle\iiint\limits_{\mathbb{R}^{n + 1}} \varepsilon(x, t) \left( a^2 \Delta + \frac{\partial}{\partial t}\right) \varphi(x, t) \, \mathrm{d} x \, \mathrm{d} t &= - \varphi(0, 0), \\
	\displaystyle\iiint\limits_{\mathbb{R}^{n + 1}} \psi(x, t) \left( a^2 \Delta + \frac{\partial^2}{\partial t^2}\right) \varphi(x, t) \, \mathrm{d} x \, \mathrm{d} t &= - \varphi(0, 0).
\end{align*}
$$

---

[Назад на головну](../README.md)
