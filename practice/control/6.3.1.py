#!/usr/bin/env python
import matplotlib.pyplot as plt
import numpy as np
from math import sin, pi


ell = 1

x_0 = np.arange(-2*ell, 2*ell, 1e-3)


def v_0_f(x: float) -> float:
	if x < -ell:
		return 0
	if -ell < x < ell:
		return sin(pi * x / ell)
	if ell < x:
		return 0


v_0 = np.array(list(map(v_0_f, x_0)))

plt.figure(figsize=(20,10))
plt.plot(x_0, v_0, 'b-')
plt.title(f'$v_0(x)$, $\\ell={ell}$', fontsize=20)
plt.xlabel('$x$', fontsize=16)
plt.ylabel('$v_0$', fontsize=16)
plt.grid(True)
plt.savefig('6.3.1.png', bbox_inches='tight')
