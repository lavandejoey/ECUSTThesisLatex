#/bin/python3

import numpy as np
import matplotlib.pyplot as plt

# Load data
data = np.loadtxt('data.txt')

# Plot data
plt.plot(data[:,0], data[:,1], 'o')

# Plot the line
x = np.linspace(0, 1, 100)
y = 0.5 * x + 0.5
plt.plot(x, y)

# Save the figure
plt.savefig('1.png')

# Show the figure
plt.show()