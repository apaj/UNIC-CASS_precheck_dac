#include <stdio.h>
#include <math.h>

#define VREF 3.3 // Referentni napon
#define RESOLUTION 4 // Broj bitova rezolucije

// Funkcija za simulaciju 4-bit DAC konvertera
double dac_convert(unsigned int input) {
    double step_size = VREF / ((1 << RESOLUTION) - 1); // Veličina koraka
    return input * step_size; // Računanje izlaznog napona
}

int main() {
    printf("4-bit DAC Converter Simulation\n");

    // Iteracija kroz sve moguće 4-bitne ulazne vrednosti
    for (unsigned int input = 0; input < (1 << RESOLUTION); input++) {
        double output_voltage = dac_convert(input);
        printf("Input: %u, Output Voltage: %.2f V\n", input, output_voltage);
    }

    return 0;
}
