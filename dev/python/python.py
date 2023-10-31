import numpy as np #rename the numpy library
import matplotlib.pyplot as plt 
import sys
import os


domen = sys.argv[1]
operation = sys.argv[2]
dev_path = os.environ.get('DEV_PATH')
#print(dev_path)

print(dev_path + "/netlists/tb_dac_" + domen + "_" + operation + ".res")

#filename = dev_path + '/netlists/dac_cell_trans.res' #TODO: Add domen and operation in filename
filename = dev_path + "/res/dac_" + domen + "_" + operation + "_" + "cur" + ".res"

results = np.loadtxt(filename, skiprows=1) #variabla results load this file and remove unnecessary rows, make useful matrix

print (results.shape)

cols = results.shape[1]

x = results[:, 0]
y = results[:, 1:cols]


for curve in range(y.shape[1]):
    plt.plot (x, y[:, curve])

plt.title('Transient simulation')
plt.xlabel('Time [s]')
plt.ylabel('Current [A]')
plt.show()

