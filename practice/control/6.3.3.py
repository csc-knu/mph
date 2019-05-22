#!/usr/bin/env python
import matplotlib.pyplot as plt
import numpy as np
from math import pi

ell, a = 1, 1/2


def u(x, t):
	if x + a * t <= -ell:
		if x - a * t <= - ell:
			return 0  # I
		if -ell <= x - a * t <= ell:
			return 0  #  invalid region
		if ell <= x - a * t:
			return 0  #  invalid region
	if -ell <= x + a * t <= ell:
		if x - a * t <= - ell:
			return -ell / (2 * a * pi) * (np.cos(pi * (x + a * t) / ell) + 1)  # IV
		if -ell <= x - a * t <= ell:
			return -ell / (2 * a * pi) * (np.cos(pi * (x + a * t) / ell) - \
				np.cos(pi * (x - a * t) / ell))  # II
		if ell <= x - a * t:
			return 0  #  invalid region
	if ell <= x + a * t:
		if x - a * t <= - ell:
			return 0  # VI
		if -ell <= x - a * t <= ell:
			return ell / (2 * a * pi) * (np.cos(pi * (x - a * t) / ell) + 1)  # V
		if ell <= x - a * t:
			return 0  # III


x = np.arange(-3*ell, 3*ell, 1e-2)
t = np.arange(0, 8*a*ell, 1e-2)

X, T = np.meshgrid(x, t)
n, m = X.shape
U = np.matrix([[u(X[i,j], T[i,j]) for j in range(m)] for i in range(n)])

plt.figure(figsize=(20,10))
plt.xlabel('$x$', fontsize=16)
plt.ylabel('$t$', fontsize=16)
plt.title(f'$u(x,t)$, $\\ell={ell}$, $a={a}$', fontsize=20)
plt.imshow(U, origin='lower', cmap='bwr', interpolation='nearest',
	extent=[np.min(x), np.max(x), np.min(t), np.max(t)])
plt.colorbar()
plt.grid(True)
plt.savefig('6.3.3.png', bbox_inches='tight')
