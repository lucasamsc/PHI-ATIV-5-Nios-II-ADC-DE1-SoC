
module atividadeCinco (
	clk_clk,
	reset_reset_n,
	eth_tse_0_mac_status_connection_set_10,
	eth_tse_0_mac_status_connection_set_1000,
	eth_tse_0_mac_status_connection_eth_mode,
	eth_tse_0_mac_status_connection_ena_10,
	eth_tse_0_mac_gmii_connection_gmii_rx_d,
	eth_tse_0_mac_gmii_connection_gmii_rx_dv,
	eth_tse_0_mac_gmii_connection_gmii_rx_err,
	eth_tse_0_mac_gmii_connection_gmii_tx_d,
	eth_tse_0_mac_gmii_connection_gmii_tx_en,
	eth_tse_0_mac_gmii_connection_gmii_tx_err,
	eth_tse_0_mac_mii_connection_mii_rx_d,
	eth_tse_0_mac_mii_connection_mii_rx_dv,
	eth_tse_0_mac_mii_connection_mii_rx_err,
	eth_tse_0_mac_mii_connection_mii_tx_d,
	eth_tse_0_mac_mii_connection_mii_tx_en,
	eth_tse_0_mac_mii_connection_mii_tx_err,
	eth_tse_0_mac_mii_connection_mii_crs,
	eth_tse_0_mac_mii_connection_mii_col,
	eth_tse_0_mac_misc_connection_magic_wakeup,
	eth_tse_0_mac_misc_connection_magic_sleep_n,
	eth_tse_0_mac_misc_connection_ff_tx_crc_fwd,
	eth_tse_0_mac_misc_connection_ff_tx_septy,
	eth_tse_0_mac_misc_connection_tx_ff_uflow,
	eth_tse_0_mac_misc_connection_ff_tx_a_full,
	eth_tse_0_mac_misc_connection_ff_tx_a_empty,
	eth_tse_0_mac_misc_connection_rx_err_stat,
	eth_tse_0_mac_misc_connection_rx_frm_type,
	eth_tse_0_mac_misc_connection_ff_rx_dsav,
	eth_tse_0_mac_misc_connection_ff_rx_a_full,
	eth_tse_0_mac_misc_connection_ff_rx_a_empty,
	pio_0_external_connection_export,
	spi_0_external_MISO,
	spi_0_external_MOSI,
	spi_0_external_SCLK,
	spi_0_external_SS_n,
	timer_0_external_port_export);	

	input		clk_clk;
	input		reset_reset_n;
	input		eth_tse_0_mac_status_connection_set_10;
	input		eth_tse_0_mac_status_connection_set_1000;
	output		eth_tse_0_mac_status_connection_eth_mode;
	output		eth_tse_0_mac_status_connection_ena_10;
	input	[7:0]	eth_tse_0_mac_gmii_connection_gmii_rx_d;
	input		eth_tse_0_mac_gmii_connection_gmii_rx_dv;
	input		eth_tse_0_mac_gmii_connection_gmii_rx_err;
	output	[7:0]	eth_tse_0_mac_gmii_connection_gmii_tx_d;
	output		eth_tse_0_mac_gmii_connection_gmii_tx_en;
	output		eth_tse_0_mac_gmii_connection_gmii_tx_err;
	input	[3:0]	eth_tse_0_mac_mii_connection_mii_rx_d;
	input		eth_tse_0_mac_mii_connection_mii_rx_dv;
	input		eth_tse_0_mac_mii_connection_mii_rx_err;
	output	[3:0]	eth_tse_0_mac_mii_connection_mii_tx_d;
	output		eth_tse_0_mac_mii_connection_mii_tx_en;
	output		eth_tse_0_mac_mii_connection_mii_tx_err;
	input		eth_tse_0_mac_mii_connection_mii_crs;
	input		eth_tse_0_mac_mii_connection_mii_col;
	output		eth_tse_0_mac_misc_connection_magic_wakeup;
	input		eth_tse_0_mac_misc_connection_magic_sleep_n;
	input		eth_tse_0_mac_misc_connection_ff_tx_crc_fwd;
	output		eth_tse_0_mac_misc_connection_ff_tx_septy;
	output		eth_tse_0_mac_misc_connection_tx_ff_uflow;
	output		eth_tse_0_mac_misc_connection_ff_tx_a_full;
	output		eth_tse_0_mac_misc_connection_ff_tx_a_empty;
	output	[17:0]	eth_tse_0_mac_misc_connection_rx_err_stat;
	output	[3:0]	eth_tse_0_mac_misc_connection_rx_frm_type;
	output		eth_tse_0_mac_misc_connection_ff_rx_dsav;
	output		eth_tse_0_mac_misc_connection_ff_rx_a_full;
	output		eth_tse_0_mac_misc_connection_ff_rx_a_empty;
	input	[9:0]	pio_0_external_connection_export;
	input		spi_0_external_MISO;
	output		spi_0_external_MOSI;
	output		spi_0_external_SCLK;
	output		spi_0_external_SS_n;
	output		timer_0_external_port_export;
endmodule
