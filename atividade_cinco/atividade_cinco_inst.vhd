	component atividade_cinco is
		port (
			clk_0_clk                        : in  std_logic                    := 'X'; -- clk
			reset_0_reset_n                  : in  std_logic                    := 'X'; -- reset_n
			pio_0_external_connection_export : out std_logic_vector(7 downto 0);        -- export
			spi_0_external_MISO              : in  std_logic                    := 'X'; -- MISO
			spi_0_external_MOSI              : out std_logic;                           -- MOSI
			spi_0_external_SCLK              : out std_logic;                           -- SCLK
			spi_0_external_SS_n              : out std_logic;                           -- SS_n
			uart_0_external_connection_rxd   : in  std_logic                    := 'X'; -- rxd
			uart_0_external_connection_txd   : out std_logic                            -- txd
		);
	end component atividade_cinco;

	u0 : component atividade_cinco
		port map (
			clk_0_clk                        => CONNECTED_TO_clk_0_clk,                        --                      clk_0.clk
			reset_0_reset_n                  => CONNECTED_TO_reset_0_reset_n,                  --                    reset_0.reset_n
			pio_0_external_connection_export => CONNECTED_TO_pio_0_external_connection_export, --  pio_0_external_connection.export
			spi_0_external_MISO              => CONNECTED_TO_spi_0_external_MISO,              --             spi_0_external.MISO
			spi_0_external_MOSI              => CONNECTED_TO_spi_0_external_MOSI,              --                           .MOSI
			spi_0_external_SCLK              => CONNECTED_TO_spi_0_external_SCLK,              --                           .SCLK
			spi_0_external_SS_n              => CONNECTED_TO_spi_0_external_SS_n,              --                           .SS_n
			uart_0_external_connection_rxd   => CONNECTED_TO_uart_0_external_connection_rxd,   -- uart_0_external_connection.rxd
			uart_0_external_connection_txd   => CONNECTED_TO_uart_0_external_connection_txd    --                           .txd
		);

