import numpy as np #rename the numpy library
import matplotlib.pyplot as plt 
import sys
import os


domen = sys.argv[1]
operation = sys.argv[2]
dev_path = os.environ.get('DEV_PATH')
#print(dev_path)

print(dev_path + "/netlists/tb_dac_" + domen + "_" + operation + ".res")

filename1 = dev_path + "/res/dac_" + domen + "_vsw1_" + operation + "_" + "vol" + ".res"
filename2 = dev_path + "/res/dac_" + domen + "_vsw2_" + operation + "_" + "vol" + ".res"
filename3 = dev_path + "/res/dac_" + domen + "_vsw3_" + operation + "_" + "vol" + ".res"
filename4 = dev_path + "/res/dac_" + domen + "_vsw4_" + operation + "_" + "vol" + ".res"
filename_vout = dev_path + "/res/dac_" + domen + "_vout_" + operation + "_" + "vol" + ".res"

results1 = np.loadtxt(filename1, skiprows=1) #variabla results load this file and remove unnecessary rows, make useful matrix
results2 = np.loadtxt(filename2, skiprows=1)
results3 = np.loadtxt(filename3, skiprows=1)
results4 = np.loadtxt(filename4, skiprows=1)
results_vout = np.loadtxt(filename_vout, skiprows=1)

#
print (results1.shape)

cols = results1.shape[1]

x1 = results1[:, 0]*1000
y1 = results1[:, 1:cols]
label_curve1 = ['Vsw1']

#
print (results2.shape)

cols = results2.shape[1]

x2 = results2[:, 0]*1000
y2 = results2[:, 1:cols]
label_curve2 = ['Vsw2']

#
print (results3.shape)

cols = results3.shape[1]

x3 = results3[:, 0]*1000
y3 = results3[:, 1:cols]
label_curve3 = ['Vsw3']

#
print (results4.shape)

cols = results4.shape[1]

x4 = results4[:, 0]*1000
y4 = results4[:, 1:cols]
label_curve4 = ['Vsw4']

#
print (results_vout.shape)

cols = results_vout.shape[1]

x_vout = results_vout[:, 0]*1000
y_vout = results_vout[:, 1:cols]
label_curve_vout = ['Vout']


#fig, (ax1, ax2, ax3, ax4, ax_vout) = plt.subplots(5, sharex=True)
fig = plt.figure()
gs = fig.add_gridspec(5, hspace=0, height_ratios=[1, 1, 1, 1, 5])
axs = gs.subplots(sharex=True)

for curve in range(y1.shape[1]):
    label1 = label_curve1[curve]
    axs[0].plot (x1, y1[:, curve], label=label1)

for curve in range(y2.shape[1]):
    label2 = label_curve2[curve]
    axs[1].plot (x2, y2[:, curve], label=label2)

for curve in range(y3.shape[1]):
    label3 = label_curve3[curve]
    axs[2].plot (x3, y3[:, curve], label=label3)

for curve in range(y4.shape[1]):
    label4 = label_curve4[curve]
    axs[3].plot (x4, y4[:, curve], label=label4)

for curve in range(y_vout.shape[1]):
    label5 = label_curve_vout[curve]
    axs[4].plot (x_vout, y_vout[:, curve], label=label5)

#plt.title(domen + ' transient simulation')
plt.xlabel('Time [ms]')
plt.ylabel('Voltage [V]')
plt.legend(loc='upper right')
plt.show()

