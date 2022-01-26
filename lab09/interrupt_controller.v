`include "defines.vh"
module interrupt_controller #(
        parameter   DATA_WIDTH = 8,
        parameter I_ADDR_WIDTH = 10
    )(
        input wire                    clk,
        input wire                    reset,
        input wire   [DATA_WIDTH-1:0] mem_tifr,
        input wire   [DATA_WIDTH-1:0] mem_timsk,
        input wire   [DATA_WIDTH-1:0] mem_sreg,
        output reg                    irq,
        output reg [I_ADDR_WIDTH-1:0] vector
    );

    always @(posedge clk) begin
        if (reset) begin
            irq    <= 0;
            vector <= 0;
        end else begin
            if (mem_sreg[`FLAGS_I] && mem_timsk[`OCIE0A] && mem_tifr[`OCF0A]) begin
                irq    <= 1;
                vector <= `TIM0_COMPA_ISR;
            end else if (mem_sreg[`FLAGS_I] && mem_timsk[`OCIE0B] && mem_tifr[`OCF0B]) begin
                irq    <= 1;
                vector <= `TIM0_COMPB_ISR;
            end else if (mem_sreg[`FLAGS_I] && mem_timsk[`TOIE0] && mem_tifr[`TOV0]) begin
                irq    <= 1;
                vector <= `TIM0_OVF_ISR;
            end else begin
                irq    <= 0;
                // Trebuie sa lasam variabila vector la valoarea anterioara
                // pentru a putea sti la ce intrerupere facem ACK.
            end
        end
    end
endmodule
