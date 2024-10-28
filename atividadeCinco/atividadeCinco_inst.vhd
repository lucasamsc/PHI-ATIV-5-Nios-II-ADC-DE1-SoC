	component atividadeCinco is
		port (
			clk_clk                                     : in  std_logic                     := 'X';             -- clk
			reset_reset_n                               : in  std_logic                     := 'X';             -- reset_n
			eth_tse_0_mac_status_connection_set_10      : in  std_logic                     := 'X';             -- set_10
			eth_tse_0_mac_status_connection_set_1000    : in  std_logic                     := 'X';             -- set_1000
			eth_tse_0_mac_status_connection_eth_mode    : out std_logic;                                        -- eth_mode
			eth_tse_0_mac_status_connection_ena_10      : out std_logic;                                        -- ena_10
			eth_tse_0_mac_gmii_connection_gmii_rx_d     : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- gmii_rx_d
			eth_tse_0_mac_gmii_connection_gmii_rx_dv    : in  std_logic                     := 'X';             -- gmii_rx_dv
			eth_tse_0_mac_gmii_connection_gmii_rx_err   : in  std_logic                     := 'X';             -- gmii_rx_err
			eth_tse_0_mac_gmii_connection_gmii_tx_d     : out std_logic_vector(7 downto 0);                     -- gmii_tx_d
			eth_tse_0_mac_gmii_connection_gmii_tx_en    : out std_logic;                                        -- gmii_tx_en
			eth_tse_0_mac_gmii_connection_gmii_tx_err   : out std_logic;                                        -- gmii_tx_err
			eth_tse_0_mac_mii_connection_mii_rx_d       : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- mii_rx_d
			eth_tse_0_mac_mii_connection_mii_rx_dv      : in  std_logic                     := 'X';             -- mii_rx_dv
			eth_tse_0_mac_mii_connection_mii_rx_err     : in  std_logic                     := 'X';             -- mii_rx_err
			eth_tse_0_mac_mii_connection_mii_tx_d       : out std_logic_vector(3 downto 0);                     -- mii_tx_d
			eth_tse_0_mac_mii_connection_mii_tx_en      : out std_logic;                                        -- mii_tx_en
			eth_tse_0_mac_mii_connection_mii_tx_err     : out std_logic;                                        -- mii_tx_err
			eth_tse_0_mac_mii_connection_mii_crs        : in  std_logic                     := 'X';             -- mii_crs
			eth_tse_0_mac_mii_connection_mii_col        : in  std_logic                     := 'X';             -- mii_col
			eth_tse_0_mac_misc_connection_magic_wakeup  : out std_logic;                                        -- magic_wakeup
			eth_tse_0_mac_misc_connection_magic_sleep_n : in  std_logic                     := 'X';             -- magic_sleep_n
			eth_tse_0_mac_misc_connection_ff_tx_crc_fwd : in  std_logic                     := 'X';             -- ff_tx_crc_fwd
			eth_tse_0_mac_misc_connection_ff_tx_septy   : out std_logic;                                        -- ff_tx_septy
			eth_tse_0_mac_misc_connection_tx_ff_uflow   : out std_logic;                                        -- tx_ff_uflow
			eth_tse_0_mac_misc_connection_ff_tx_a_full  : out std_logic;                                        -- ff_tx_a_full
			eth_tse_0_mac_misc_connection_ff_tx_a_empty : out std_logic;                                        -- ff_tx_a_empty
			eth_tse_0_mac_misc_connection_rx_err_stat   : out std_logic_vector(17 downto 0);                    -- rx_err_stat
			eth_tse_0_mac_misc_connection_rx_frm_type   : out std_logic_vector(3 downto 0);                     -- rx_frm_type
			eth_tse_0_mac_misc_connection_ff_rx_dsav    : out std_logic;                                        -- ff_rx_dsav
			eth_tse_0_mac_misc_connection_ff_rx_a_full  : out std_logic;                                        -- ff_rx_a_full
			eth_tse_0_mac_misc_connection_ff_rx_a_empty : out std_logic;                                        -- ff_rx_a_empty
			pio_0_external_connection_export            : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			spi_0_external_MISO                         : in  std_logic                     := 'X';             -- MISO
			spi_0_external_MOSI                         : out std_logic;                                        -- MOSI
			spi_0_external_SCLK                         : out std_logic;                                        -- SCLK
			spi_0_external_SS_n                         : out std_logic;                                        -- SS_n
			timer_0_external_port_export                : out std_logic                                         -- export
		);
	end component atividadeCinco;

	u0 : component atividadeCinco
		port map (
			clk_clk                                     => CONNECTED_TO_clk_clk,                                     --                             clk.clk
			reset_reset_n                               => CONNECTED_TO_reset_reset_n,                               --                           reset.reset_n
			eth_tse_0_mac_status_connection_set_10      => CONNECTED_TO_eth_tse_0_mac_status_connection_set_10,      -- eth_tse_0_mac_status_connection.set_10
			eth_tse_0_mac_status_connection_set_1000    => CONNECTED_TO_eth_tse_0_mac_status_connection_set_1000,    --                                .set_1000
			eth_tse_0_mac_status_connection_eth_mode    => CONNECTED_TO_eth_tse_0_mac_status_connection_eth_mode,    --                                .eth_mode
			eth_tse_0_mac_status_connection_ena_10      => CONNECTED_TO_eth_tse_0_mac_status_connection_ena_10,      --                                .ena_10
			eth_tse_0_mac_gmii_connection_gmii_rx_d     => CONNECTED_TO_eth_tse_0_mac_gmii_connection_gmii_rx_d,     --   eth_tse_0_mac_gmii_connection.gmii_rx_d
			eth_tse_0_mac_gmii_connection_gmii_rx_dv    => CONNECTED_TO_eth_tse_0_mac_gmii_connection_gmii_rx_dv,    --                                .gmii_rx_dv
			eth_tse_0_mac_gmii_connection_gmii_rx_err   => CONNECTED_TO_eth_tse_0_mac_gmii_connection_gmii_rx_err,   --                                .gmii_rx_err
			eth_tse_0_mac_gmii_connection_gmii_tx_d     => CONNECTED_TO_eth_tse_0_mac_gmii_connection_gmii_tx_d,     --                                .gmii_tx_d
			eth_tse_0_mac_gmii_connection_gmii_tx_en    => CONNECTED_TO_eth_tse_0_mac_gmii_connection_gmii_tx_en,    --                                .gmii_tx_en
			eth_tse_0_mac_gmii_connection_gmii_tx_err   => CONNECTED_TO_eth_tse_0_mac_gmii_connection_gmii_tx_err,   --                                .gmii_tx_err
			eth_tse_0_mac_mii_connection_mii_rx_d       => CONNECTED_TO_eth_tse_0_mac_mii_connection_mii_rx_d,       --    eth_tse_0_mac_mii_connection.mii_rx_d
			eth_tse_0_mac_mii_connection_mii_rx_dv      => CONNECTED_TO_eth_tse_0_mac_mii_connection_mii_rx_dv,      --                                .mii_rx_dv
			eth_tse_0_mac_mii_connection_mii_rx_err     => CONNECTED_TO_eth_tse_0_mac_mii_connection_mii_rx_err,     --                                .mii_rx_err
			eth_tse_0_mac_mii_connection_mii_tx_d       => CONNECTED_TO_eth_tse_0_mac_mii_connection_mii_tx_d,       --                                .mii_tx_d
			eth_tse_0_mac_mii_connection_mii_tx_en      => CONNECTED_TO_eth_tse_0_mac_mii_connection_mii_tx_en,      --                                .mii_tx_en
			eth_tse_0_mac_mii_connection_mii_tx_err     => CONNECTED_TO_eth_tse_0_mac_mii_connection_mii_tx_err,     --                                .mii_tx_err
			eth_tse_0_mac_mii_connection_mii_crs        => CONNECTED_TO_eth_tse_0_mac_mii_connection_mii_crs,        --                                .mii_crs
			eth_tse_0_mac_mii_connection_mii_col        => CONNECTED_TO_eth_tse_0_mac_mii_connection_mii_col,        --                                .mii_col
			eth_tse_0_mac_misc_connection_magic_wakeup  => CONNECTED_TO_eth_tse_0_mac_misc_connection_magic_wakeup,  --   eth_tse_0_mac_misc_connection.magic_wakeup
			eth_tse_0_mac_misc_connection_magic_sleep_n => CONNECTED_TO_eth_tse_0_mac_misc_connection_magic_sleep_n, --                                .magic_sleep_n
			eth_tse_0_mac_misc_connection_ff_tx_crc_fwd => CONNECTED_TO_eth_tse_0_mac_misc_connection_ff_tx_crc_fwd, --                                .ff_tx_crc_fwd
			eth_tse_0_mac_misc_connection_ff_tx_septy   => CONNECTED_TO_eth_tse_0_mac_misc_connection_ff_tx_septy,   --                                .ff_tx_septy
			eth_tse_0_mac_misc_connection_tx_ff_uflow   => CONNECTED_TO_eth_tse_0_mac_misc_connection_tx_ff_uflow,   --                                .tx_ff_uflow
			eth_tse_0_mac_misc_connection_ff_tx_a_full  => CONNECTED_TO_eth_tse_0_mac_misc_connection_ff_tx_a_full,  --                                .ff_tx_a_full
			eth_tse_0_mac_misc_connection_ff_tx_a_empty => CONNECTED_TO_eth_tse_0_mac_misc_connection_ff_tx_a_empty, --                                .ff_tx_a_empty
			eth_tse_0_mac_misc_connection_rx_err_stat   => CONNECTED_TO_eth_tse_0_mac_misc_connection_rx_err_stat,   --                                .rx_err_stat
			eth_tse_0_mac_misc_connection_rx_frm_type   => CONNECTED_TO_eth_tse_0_mac_misc_connection_rx_frm_type,   --                                .rx_frm_type
			eth_tse_0_mac_misc_connection_ff_rx_dsav    => CONNECTED_TO_eth_tse_0_mac_misc_connection_ff_rx_dsav,    --                                .ff_rx_dsav
			eth_tse_0_mac_misc_connection_ff_rx_a_full  => CONNECTED_TO_eth_tse_0_mac_misc_connection_ff_rx_a_full,  --                                .ff_rx_a_full
			eth_tse_0_mac_misc_connection_ff_rx_a_empty => CONNECTED_TO_eth_tse_0_mac_misc_connection_ff_rx_a_empty, --                                .ff_rx_a_empty
			pio_0_external_connection_export            => CONNECTED_TO_pio_0_external_connection_export,            --       pio_0_external_connection.export
			spi_0_external_MISO                         => CONNECTED_TO_spi_0_external_MISO,                         --                  spi_0_external.MISO
			spi_0_external_MOSI                         => CONNECTED_TO_spi_0_external_MOSI,                         --                                .MOSI
			spi_0_external_SCLK                         => CONNECTED_TO_spi_0_external_SCLK,                         --                                .SCLK
			spi_0_external_SS_n                         => CONNECTED_TO_spi_0_external_SS_n,                         --                                .SS_n
			timer_0_external_port_export                => CONNECTED_TO_timer_0_external_port_export                 --           timer_0_external_port.export
		);

