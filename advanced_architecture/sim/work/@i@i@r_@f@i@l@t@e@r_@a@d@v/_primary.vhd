library verilog;
use verilog.vl_types.all;
entity IIR_FILTER_ADV is
    port(
        din             : in     vl_logic_vector(10 downto 0);
        b0              : in     vl_logic_vector(10 downto 0);
        b1              : in     vl_logic_vector(10 downto 0);
        b2              : in     vl_logic_vector(10 downto 0);
        a1_neg          : in     vl_logic_vector(10 downto 0);
        a1_2_a2         : in     vl_logic_vector(10 downto 0);
        a1a2            : in     vl_logic_vector(10 downto 0);
        clk             : in     vl_logic;
        vin             : in     vl_logic;
        rst_n           : in     vl_logic;
        dout            : out    vl_logic_vector(10 downto 0);
        vout            : out    vl_logic
    );
end IIR_FILTER_ADV;
