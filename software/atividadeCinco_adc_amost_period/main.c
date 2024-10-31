#include <stdio.h>
#include <stdlib.h>
#include "system.h"
#include "io.h"
#include "sys/alt_irq.h"
#include "altera_avalon_timer_regs.h"
#include "altera_avalon_pio_regs.h"
#include "alt_types.h"

#define MAX_AMOSTRAS 1024 // Limite m�ximo de amostras

// Vari�veis globais
volatile int amostras[MAX_AMOSTRAS];
volatile int contador = 0;
volatile int num_amostras = 0;

// Fun��o de Interrup��o para Amostragem Peri�dica
void handler_timer(void* context, alt_u32 id) {
    IOWR_ALTERA_AVALON_TIMER_STATUS(TIMER_0_BASE, 0); // Limpa a interrup��o do Timer

    if (contador < num_amostras) {
        int amostra = IORD_ALTERA_AVALON_PIO_DATA(SPI_0_BASE); // Captura a amostra
        amostras[contador++] = amostra; // Armazena a amostra
    }
}

// Fun��o para Configurar o Timer e Interrup��o
void configurar_timer() {
    IOWR_ALTERA_AVALON_TIMER_PERIODL(TIMER_0_BASE, 0xFFFF);
    IOWR_ALTERA_AVALON_TIMER_PERIODH(TIMER_0_BASE, 0x000F);
    IOWR_ALTERA_AVALON_TIMER_CONTROL(TIMER_0_BASE,
        ALTERA_AVALON_TIMER_CONTROL_ITO_MSK | ALTERA_AVALON_TIMER_CONTROL_CONT_MSK);
    alt_irq_register(TIMER_0_IRQ, NULL, handler_timer);
}

// Fun��o para Ler N�mero de Amostras das Chaves (SW0-SW9)
int ler_num_amostras() {
    int valor = IORD_ALTERA_AVALON_PIO_DATA(PIO_0_BASE) & 0x3FF;
    return (valor > MAX_AMOSTRAS) ? MAX_AMOSTRAS : valor;
}

// Fun��o Principal
int main() {
    printf("Sistema pronto. Pressione o bot�o para iniciar a captura.\n");

    while (1) {
        // Agora lemos o bot�o debounced diretamente
        if (IORD_ALTERA_AVALON_PIO_DATA(DEBOUNCED_BUTTON_BASE) & 0x01) { // "DEBOUNCED_BUTTON_BASE" representa a sa�da do m�dulo de debounce
            contador = 0;
            num_amostras = ler_num_amostras(); // Configura o n�mero de amostras

            printf("Capturando %d amostras...\n", num_amostras);
            configurar_timer(); // Configura e inicia o Timer

            // Espera at� que todas as amostras sejam capturadas
            while (contador < num_amostras);

            printf("Captura conclu�da. Amostras:\n");

            // Exibe as amostras separadas por v�rgulas
            for (int i = 0; i < num_amostras; i++) {
                printf("%d", amostras[i]);
                if (i < num_amostras - 1) {
                    printf(", ");
                }
            }
            printf("\n");

            // Espera o bot�o ser solto
            while (IORD_ALTERA_AVALON_PIO_DATA(DEBOUNCED_BUTTON_BASE) & 0x01);
        }
    }

    return 0;
}
