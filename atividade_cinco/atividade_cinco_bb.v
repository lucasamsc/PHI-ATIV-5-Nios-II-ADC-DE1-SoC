
module atividade_cinco (
	clk_0_clk,
	reset_0_reset_n,
	pio_0_external_connection_export,
	spi_0_external_MISO,
	spi_0_external_MOSI,
	spi_0_external_SCLK,
	spi_0_external_SS_n,
	uart_0_external_connection_rxd,
	uart_0_external_connection_txd);	

	input		clk_0_clk;
	input		reset_0_reset_n;
	output	[7:0]	pio_0_external_connection_export;
	input		spi_0_external_MISO;
	output		spi_0_external_MOSI;
	output		spi_0_external_SCLK;
	output		spi_0_external_SS_n;
	input		uart_0_external_connection_rxd;
	output		uart_0_external_connection_txd;
endmodule
