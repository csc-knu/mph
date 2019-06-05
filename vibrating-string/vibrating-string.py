import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from scipy.integrate import quad, dblquad


def u_0(x):
    return (-ell <= x <= ell) * np.sin(x * np.pi / ell)


def v_0(x):
    return (0 <= x <= ell) * np.cos(x * np.pi / ell) - \
        (-ell <= x <= 0) * np.cos(x * np.pi / ell)


def f(x, t):
    return 0


def u(x, t):
    return np.array([(u_0(xi - a * t) + u_0(xi + a * t)) / 2 for xi in x]) + \
        1 / (2 * a) * np.array([quad(v_0, xi - a * t, xi + a * t)[0] for xi in x]) + \
        1 / (2 * a) * np.array([dblquad(f, 0, t, lambda tau: xi - a * (t - tau), lambda tau: xi + a * (t - tau))[0] for xi in x])


def init():
    line.set_ydata([np.nan] * len(x))
    return line,


def animate(t):
    line.set_ydata(u(x, t / 50))
    return line,


if __name__ == '__main__':
    fig, ax = plt.subplots()
    fig.set_size_inches(20, 10)
    ax.set_ylim(bottom=-1, top=1)
    ax.set_xlabel('$x$', fontsize=16)
    ax.set_ylabel('$u$', fontsize=16)
    ax.xaxis.grid(True)
    ax.yaxis.grid(True)

    ell, a = 1, 1
    x = np.arange(0, 3 * ell / a + 0.05, 0.05)
    line, = ax.plot(x, np.array([u_0(xi) for xi in x]))

    ani = animation.FuncAnimation(fig, animate, init_func=init, interval=2, blit=True, save_count=50)

    plt.show()

    # from matplotlib.animation import FFMpegWriter
    # writer = FFMpegWriter(fps=15, metadata=dict(artist='Me'), bitrate=1800)
    # ani.save("movie.mp4", writer=writer)
