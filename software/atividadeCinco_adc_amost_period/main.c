#include <stdio.h>
#include <stdlib.h>
#include "system.h"
#include "io.h"
#include "sys/alt_irq.h"
#include "altera_avalon_timer_regs.h"
#include "altera_avalon_pio_regs.h"
#include "alt_types.h"

#define MAX_AMOSTRAS 1024 // Limite máximo de amostras

// Variáveis globais
volatile int amostras[MAX_AMOSTRAS];
volatile int contador = 0;
volatile int num_amostras = 0;

// Função de Interrupção para Amostragem Periódica
void handler_timer(void* context, alt_u32 id) {
    IOWR_ALTERA_AVALON_TIMER_STATUS(TIMER_0_BASE, 0); // Limpa a interrupção do Timer

    if (contador < num_amostras) {
        int amostra = IORD_ALTERA_AVALON_PIO_DATA(SPI_0_BASE); // Captura a amostra
        amostras[contador++] = amostra; // Armazena a amostra
    }
}

// Função para Configurar o Timer e Interrupção
void configurar_timer() {
    IOWR_ALTERA_AVALON_TIMER_PERIODL(TIMER_0_BASE, 0xFFFF);
    IOWR_ALTERA_AVALON_TIMER_PERIODH(TIMER_0_BASE, 0x000F);
    IOWR_ALTERA_AVALON_TIMER_CONTROL(TIMER_0_BASE,
        ALTERA_AVALON_TIMER_CONTROL_ITO_MSK | ALTERA_AVALON_TIMER_CONTROL_CONT_MSK);
    alt_irq_register(TIMER_0_IRQ, NULL, handler_timer);
}

// Função para Ler Número de Amostras das Chaves (SW0-SW9)
int ler_num_amostras() {
    int valor = IORD_ALTERA_AVALON_PIO_DATA(PIO_0_BASE) & 0x3FF;
    return (valor > MAX_AMOSTRAS) ? MAX_AMOSTRAS : valor;
}

// Função Principal
int main() {
    printf("Sistema pronto. Pressione o botão para iniciar a captura.\n");

    while (1) {
        // Agora lemos o botão debounced diretamente
        if (IORD_ALTERA_AVALON_PIO_DATA(DEBOUNCED_BUTTON_BASE) & 0x01) { // "DEBOUNCED_BUTTON_BASE" representa a saída do módulo de debounce
            contador = 0;
            num_amostras = ler_num_amostras(); // Configura o número de amostras

            printf("Capturando %d amostras...\n", num_amostras);
            configurar_timer(); // Configura e inicia o Timer

            // Espera até que todas as amostras sejam capturadas
            while (contador < num_amostras);

            printf("Captura concluída. Amostras:\n");

            // Exibe as amostras separadas por vírgulas
            for (int i = 0; i < num_amostras; i++) {
                printf("%d", amostras[i]);
                if (i < num_amostras - 1) {
                    printf(", ");
                }
            }
            printf("\n");

            // Espera o botão ser solto
            while (IORD_ALTERA_AVALON_PIO_DATA(DEBOUNCED_BUTTON_BASE) & 0x01);
        }
    }

    return 0;
}
