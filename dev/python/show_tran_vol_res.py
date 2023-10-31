import numpy as np #rename the numpy library
import matplotlib.pyplot as plt 
import sys
import os


domen = sys.argv[1]
operation = sys.argv[2]
dev_path = os.environ.get('DEV_PATH')
#print(dev_path)

print(dev_path + "/netlists/tb_dac_" + domen + "_" + operation + ".res")

filename = dev_path + "/res/dac_" + domen + "_" + operation + "_" + "vol" + ".res"

results = np.loadtxt(filename, skiprows=1) #variabla results load this file and remove unnecessary rows, make useful matrix

print (results.shape)

cols = results.shape[1]

x = results[:, 0]*1000
y = results[:, 1:cols]
label_curve = ['Vsw']


for curve in range(y.shape[1]):
    label = label_curve[curve]
    plt.plot (x, y[:, curve], label=label)

plt.title(domen + ' transient simulation')
plt.xlabel('Time [ms]')
plt.ylabel('Voltage [V]')
plt.legend(loc='upper right')
plt.show()

