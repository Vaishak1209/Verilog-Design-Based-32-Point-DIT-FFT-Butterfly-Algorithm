`timescale 1ns / 1ps

module main_module(
input clk

    );
    
    wire [4:0] m_addr;
    wire [15:0] m_data;
    wire m_we;
    wire [4:0] s_addr;
    wire [31:0] s_data;
    wire s_re;
    
    vio_0 inst_0 (
        .clk(clk),
        .probe_in0(s_data),
        .probe_out0(m_addr),
        .probe_out1(m_data),
        .probe_out2(m_we),
        .probe_out3(s_addr),
        .probe_out4(s_re)
     );
    fft_wrapper inst_1(
        .clk(clk),
        .m_addr(m_addr),
        .m_data(m_data),
        .m_we(m_we),
        .s_addr(s_addr),
        .s_re(s_re),
        .s_data(s_data)
    );

endmodule
