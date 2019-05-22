#!/usr/bin/env python
import matplotlib.pyplot as plt
import numpy as np


ell, a = 1, 2

x_0_1 = np.arange(-ell, 3*ell, 1e-3)
x_0_2 = np.arange(-3*ell, ell, 1e-3)

plt.figure(figsize=(20,10))
plt.plot(x_0_1, np.abs((x_0_1 - ell) / a), 'b-')
plt.plot(x_0_2, np.abs((x_0_2 + ell) / a), 'b-')
plt.title(f'$\\ell={ell}$, $a={a}$', fontsize=20)
plt.xlabel('$x$', fontsize=16)
plt.ylabel('$t$', fontsize=16)
plt.text(-2.5*ell,.4*ell/a, 'I', fontsize=20)
plt.text(0,.4*ell/a, 'II', fontsize=20)
plt.text(2.5*ell,.4*ell/a, 'III', fontsize=20)
plt.text(-ell,.8*ell/a, 'IV', fontsize=20)
plt.text(ell,.8*ell/a, 'V', fontsize=20)
plt.text(0,1.6*ell/a, 'VI', fontsize=20)
plt.grid(True)
plt.savefig('6.3.2.png', bbox_inches='tight')
