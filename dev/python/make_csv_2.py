import csv
import sys
import os

domen = sys.argv[1]
operation = sys.argv[2]
dev_path = os.environ.get('DEV_PATH')

# Putanja do ulaznog tekstualnog fajla
ulazni_fajl = dev_path + "/res/dac_" + domen + "_" + operation + ".res"

# Putanja do izlaznog CSV fajla
#izlazni_fajl = 'izlaz.csv'
izlazni_fajl = dev_path + "/res/dac_" + domen + "_" + operation + ".csv"

# Otvaranje ulaznog i izlaznog fajla
with open(ulazni_fajl, 'r') as ulaz, open(izlazni_fajl, 'w') as izlaz:
    # Čitanje linija iz ulaznog fajla
    redovi = ulaz.readlines()

    for red in redovi[1:]:  # Preskakanje prvog reda sa imenima
        # Razdvajanje linije na vrednosti
        vrednosti = red.strip().split()

        # Pisanje imena i vrednosti u CSV fajl u željenom formatu
        for ime, vrednost in zip(redovi[0].strip().split(), vrednosti):
            formatirani_red = f"{ime.ljust(10)}{vrednost}"
            izlaz.write(formatirani_red + '\n')

print(f'Konvertovanje završeno. Rezultat je sačuvan u {izlazni_fajl}.')

