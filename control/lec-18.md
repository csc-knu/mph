<!--DEBUG-->

{% include mathjax %}

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
	(\Delta + k^2) q_k(x) &= - \delta(x), \newline
	\left( a^2 \Delta - \frac{\partial}{\partial t} \right) \varepsilon(x, t) &= - \delta(x, t), \newline
	\left( a^2 \Delta - \frac{\partial^2}{\partial t^2} \right) \psi(x, t) &= - \delta(x, t)
\end{align*}
$$

Узагальнені функції $$q_k(x)$$, $$\varepsilon(x, t)$$, $$\psi(x, t)$$ називаються _фундаментальними розв'язками_ оператора Гельмгольца, теплопровідності, хвильового відповідно, якщо вони задовольняють відповідні рівняння як узагальнені функції:

$$
\begin{align*}
	\displaystyle\iiint\limits_{\mathbb{R}^n} q_k(x) (\Delta + k^2) \varphi(x) \, \mathrm{d} x &= - \varphi(0), \newline
	\displaystyle\iiint\limits_{\mathbb{R}^{n + 1}} \varepsilon(x, t) \left( a^2 \Delta + \frac{\partial}{\partial t}\right) \varphi(x, t) \, \mathrm{d} x \, \mathrm{d} t &= - \varphi(0, 0), \newline
	\displaystyle\iiint\limits_{\mathbb{R}^{n + 1}} \psi(x, t) \left( a^2 \Delta + \frac{\partial^2}{\partial t^2}\right) \varphi(x, t) \, \mathrm{d} x \, \mathrm{d} t &= - \varphi(0, 0).
\end{align*}
$$

### 15. Фундаментальний розв'язок рівнянь Лапласа та Гельмгольца.

Для двохвимірного оператора Лапласа функція

$$
q^{(2)}(x) = \frac{1}{2 \pi} \ln \frac{1}{\vert x\vert},
$$

де $$\vert x\vert = \sqrt{x_1^2 + x_2^2}$$, є фундаментальним розв'язком, тобто задовольняє як узагальнена функція рівняння

$$
\Delta_2 \frac{1}{2 \pi} \ln \frac{1}{\vert x\vert} = - \delta(x)
$$

Тут останню рівність необхідно розуміти як

$$
\displaystyle\iint\limits_{\mathbb{R}^2} \frac{1}{2 \pi} \ln \frac{1}{\vert x\vert} \Delta_2 \varphi(x) \, \mathrm{d} x = - \varphi(0)
$$

для довільної $$\varphi \in D(\mathbb{R}^2)$$.

Для тривимірного оператора Гельмгольца функція
	
$$
q_\pm^k(x) = \frac{e^{\pm ik\vert x\vert}}{4 \pi\vert x\vert}
$$

є фундаментальним розв'язком, тобто задовольняє як узагальнена функція диференціальному рівнянню:

$$
\displaystyle\sum\limits_{i = 1}^3 \frac{\partial^2 q_\pm^k (x)}{\partial x_i^2} + k^2 q_\pm^k(x) = - \delta(x).
$$

Останнє рівняння треба розуміти як

$$
\displaystyle\iiint\limits_{\mathbb{R}^3} q_\pm^k(x) \left( \displaystyle\sum\limits_{i = 1}^3 \frac{\partial^2}{\partial x_i^2} + k^2 \right) \varphi(x) \, \mathrm{d} x = - \varphi(0)
$$

для довільної $$\varphi \in D(\mathbb{R}^3)$$.

З формули для $$q_\pm^k(x)$$ легко отримати фундаментальний розв'язок для тривимірного оператора Лапласа, тобто показати, що функція $$\frac{1}{4 \pi \vert x\vert}$$ задовольняє наступному рівнянню:

$$
\Delta_3 \frac{1}{4 \pi\vert x\vert} = - \delta(x), \quad x \in \mathbb{R}^3
$$

Формально формулу $$1 / 4 \pi \vert x \vert$$ можна отримати з $$q_\pm^k(x)$$ при $$k = 0$$.

Функція
	
$$
q^k(x) = \frac{1}{2\pi}K_0(-ik\vert x\vert),
$$

де $$x = (x_1, x_2)$$ є фундаментальним розв'язком двовимірного оператора Гельмгольца, тобто задовольняє співвідношенню:
	
$$
\displaystyle\iint\limits_{\mathbb{R}^2}q^k(x)\left(\displaystyle\sum\limits_{i=1}^2\frac{\partial^2}{\partial x_i^2}+k^2\right) \varphi(x)\,\mathrm{d} x = \varphi(0).
$$

У формулі для $$q^k(x)$$ функція $$K_\nu(x)$$ &mdash; функція Бесселя другого роду уявного аргументу $$\nu$$-порядку і є одним з двох лінійно-незалежних розв'язків лінійного диференціального рівняння Бесселя уявного аргументу:

$$
x^2 Y'' + x Y' - (x^2 + \nu^2) Y = 0.
$$

### 16. Фундаментальний розв'язок рівняння теплопровідності.

Фундаментальним розв'язком оператора теплопровідності є
	
$$
\varepsilon(x,t)=\frac{\theta(t)}{\left(2a\sqrt{\pi t}\right)^n} \cdot \exp\left\{ - \frac{\vert x\vert^2}{4a^2t} \right\}, \quad x \in \mathbb{R}^n
$$

Це означає, що узагальнена функція $$\varepsilon(x,t)$$ задовольняє інтегральній тотожності:

$$
\displaystyle\int\limits_{-\infty}^\infty \varepsilon(x,t) \left(\frac{\partial \phi}{\partial t} + a^2\Delta\phi\right)\,\mathrm{d} x\,\mathrm{d} t=-\varphi(0,0)
$$

для довільної $$\varphi\in D(\mathbb{R}^n\times\mathbb{R})$$.

### 17. Фундаментальний розв'язок хвильового оператора для $$\mathbb{R}^1$$, $$\mathbb{R}^2$$, $$\mathbb{R}^3$$.

Узагальнена функція

$$
\psi_1(x, t) = \frac{1}{2a}\theta(at-\vert x\vert)
$$

є фундаментальним розв'язком одновимірного хвильового оператора, тобто задовольняє інтегральному співвідношенню:

$$
\displaystyle\int\limits_{-\infty}^\infty \displaystyle\int\limits_{-\infty}^\infty \left(a^2\frac{\partial^2\varphi}{\partial x^2}-\frac{\partial^2\varphi}{\partial t^2}\right)\,\mathrm{d} x\,\mathrm{d} t = - \varphi(0, 0)
$$

для довільної $$\varphi \in D(\mathbb{R}^2)$$.

Без доведення наведемо вигляд фундаментального розв'язку для двовимірного та тривимірного хвильового оператора:

$$
\begin{align*}
	\psi_2(x, t) &= \frac{\theta(at-\vert x\vert)}{2\pi a\sqrt{a^2t^2-\vert x\vert^2}}, \quad x \in \mathbb{R}^2, \newline
	\psi_3(x, t) &= \frac{\theta(t)}{4 \pi a^2 t} \delta_{S_{at}}(x), \quad x \in \mathbb{R}^3.
\end{align*}
$$
