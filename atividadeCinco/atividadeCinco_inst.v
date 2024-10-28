	atividadeCinco u0 (
		.clk_clk                                     (<connected-to-clk_clk>),                                     //                             clk.clk
		.reset_reset_n                               (<connected-to-reset_reset_n>),                               //                           reset.reset_n
		.eth_tse_0_mac_status_connection_set_10      (<connected-to-eth_tse_0_mac_status_connection_set_10>),      // eth_tse_0_mac_status_connection.set_10
		.eth_tse_0_mac_status_connection_set_1000    (<connected-to-eth_tse_0_mac_status_connection_set_1000>),    //                                .set_1000
		.eth_tse_0_mac_status_connection_eth_mode    (<connected-to-eth_tse_0_mac_status_connection_eth_mode>),    //                                .eth_mode
		.eth_tse_0_mac_status_connection_ena_10      (<connected-to-eth_tse_0_mac_status_connection_ena_10>),      //                                .ena_10
		.eth_tse_0_mac_gmii_connection_gmii_rx_d     (<connected-to-eth_tse_0_mac_gmii_connection_gmii_rx_d>),     //   eth_tse_0_mac_gmii_connection.gmii_rx_d
		.eth_tse_0_mac_gmii_connection_gmii_rx_dv    (<connected-to-eth_tse_0_mac_gmii_connection_gmii_rx_dv>),    //                                .gmii_rx_dv
		.eth_tse_0_mac_gmii_connection_gmii_rx_err   (<connected-to-eth_tse_0_mac_gmii_connection_gmii_rx_err>),   //                                .gmii_rx_err
		.eth_tse_0_mac_gmii_connection_gmii_tx_d     (<connected-to-eth_tse_0_mac_gmii_connection_gmii_tx_d>),     //                                .gmii_tx_d
		.eth_tse_0_mac_gmii_connection_gmii_tx_en    (<connected-to-eth_tse_0_mac_gmii_connection_gmii_tx_en>),    //                                .gmii_tx_en
		.eth_tse_0_mac_gmii_connection_gmii_tx_err   (<connected-to-eth_tse_0_mac_gmii_connection_gmii_tx_err>),   //                                .gmii_tx_err
		.eth_tse_0_mac_mii_connection_mii_rx_d       (<connected-to-eth_tse_0_mac_mii_connection_mii_rx_d>),       //    eth_tse_0_mac_mii_connection.mii_rx_d
		.eth_tse_0_mac_mii_connection_mii_rx_dv      (<connected-to-eth_tse_0_mac_mii_connection_mii_rx_dv>),      //                                .mii_rx_dv
		.eth_tse_0_mac_mii_connection_mii_rx_err     (<connected-to-eth_tse_0_mac_mii_connection_mii_rx_err>),     //                                .mii_rx_err
		.eth_tse_0_mac_mii_connection_mii_tx_d       (<connected-to-eth_tse_0_mac_mii_connection_mii_tx_d>),       //                                .mii_tx_d
		.eth_tse_0_mac_mii_connection_mii_tx_en      (<connected-to-eth_tse_0_mac_mii_connection_mii_tx_en>),      //                                .mii_tx_en
		.eth_tse_0_mac_mii_connection_mii_tx_err     (<connected-to-eth_tse_0_mac_mii_connection_mii_tx_err>),     //                                .mii_tx_err
		.eth_tse_0_mac_mii_connection_mii_crs        (<connected-to-eth_tse_0_mac_mii_connection_mii_crs>),        //                                .mii_crs
		.eth_tse_0_mac_mii_connection_mii_col        (<connected-to-eth_tse_0_mac_mii_connection_mii_col>),        //                                .mii_col
		.eth_tse_0_mac_misc_connection_magic_wakeup  (<connected-to-eth_tse_0_mac_misc_connection_magic_wakeup>),  //   eth_tse_0_mac_misc_connection.magic_wakeup
		.eth_tse_0_mac_misc_connection_magic_sleep_n (<connected-to-eth_tse_0_mac_misc_connection_magic_sleep_n>), //                                .magic_sleep_n
		.eth_tse_0_mac_misc_connection_ff_tx_crc_fwd (<connected-to-eth_tse_0_mac_misc_connection_ff_tx_crc_fwd>), //                                .ff_tx_crc_fwd
		.eth_tse_0_mac_misc_connection_ff_tx_septy   (<connected-to-eth_tse_0_mac_misc_connection_ff_tx_septy>),   //                                .ff_tx_septy
		.eth_tse_0_mac_misc_connection_tx_ff_uflow   (<connected-to-eth_tse_0_mac_misc_connection_tx_ff_uflow>),   //                                .tx_ff_uflow
		.eth_tse_0_mac_misc_connection_ff_tx_a_full  (<connected-to-eth_tse_0_mac_misc_connection_ff_tx_a_full>),  //                                .ff_tx_a_full
		.eth_tse_0_mac_misc_connection_ff_tx_a_empty (<connected-to-eth_tse_0_mac_misc_connection_ff_tx_a_empty>), //                                .ff_tx_a_empty
		.eth_tse_0_mac_misc_connection_rx_err_stat   (<connected-to-eth_tse_0_mac_misc_connection_rx_err_stat>),   //                                .rx_err_stat
		.eth_tse_0_mac_misc_connection_rx_frm_type   (<connected-to-eth_tse_0_mac_misc_connection_rx_frm_type>),   //                                .rx_frm_type
		.eth_tse_0_mac_misc_connection_ff_rx_dsav    (<connected-to-eth_tse_0_mac_misc_connection_ff_rx_dsav>),    //                                .ff_rx_dsav
		.eth_tse_0_mac_misc_connection_ff_rx_a_full  (<connected-to-eth_tse_0_mac_misc_connection_ff_rx_a_full>),  //                                .ff_rx_a_full
		.eth_tse_0_mac_misc_connection_ff_rx_a_empty (<connected-to-eth_tse_0_mac_misc_connection_ff_rx_a_empty>), //                                .ff_rx_a_empty
		.pio_0_external_connection_export            (<connected-to-pio_0_external_connection_export>),            //       pio_0_external_connection.export
		.spi_0_external_MISO                         (<connected-to-spi_0_external_MISO>),                         //                  spi_0_external.MISO
		.spi_0_external_MOSI                         (<connected-to-spi_0_external_MOSI>),                         //                                .MOSI
		.spi_0_external_SCLK                         (<connected-to-spi_0_external_SCLK>),                         //                                .SCLK
		.spi_0_external_SS_n                         (<connected-to-spi_0_external_SS_n>),                         //                                .SS_n
		.timer_0_external_port_export                (<connected-to-timer_0_external_port_export>)                 //           timer_0_external_port.export
	);

