import csv
import numpy as np

#ime izvornog fajla sa rezultatima

input_filename = '/home/dder/.xschem/simulations/dac_cell_op.res'

#ime fajla za izlazni CSV

output_filename = 'output.csv'

#ucitaj podatke iz izvornog fajla

results = np.loadtxt(input_filename, skiprows = 1)

#otvaranje CSV fajla

with open(output_filename, 'w', newline='') as csvfile:
  #kreiranje CSV objekta
  csvwriter = csv.writer(csvfile)

  #zapisi zaglavlje
  csvwriter.writerow (['NODES', 'VALUE'])

  # Zapisi podatke u CSV fajl
  #for row in results;
  csvwriter.writerow([results[0], results[1]])

print (f'CSV fajl "{output_filename}" je uspjesno generisan.')
