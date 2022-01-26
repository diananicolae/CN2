module rom #(
        parameter   DATA_WIDTH = 16,
        parameter   ADDR_WIDTH = 8          // 2 * 1024 bytes of ROM
    )(
        input  wire                  clk,
        input  wire [ADDR_WIDTH-1:0] addr,  // here comes the program counter
        output  reg [DATA_WIDTH-1:0] data   // here goes the instruction
    );

    reg [DATA_WIDTH-1:0] value;

    always @* begin
        case (addr)
						/*	 ldi 	r17, 0b10000011 		*/
		0:		value = 16'b1110100000010011;
		/*	 out 	tccr0a, r17 		*/
		1:		value = 16'b1011101100011001;
		/*	 ldi 	r17, 0b00000001 		*/
		2:		value = 16'b1110000000010001;
		/*	 out 	tccr0b, r17 		*/
		3:		value = 16'b1011101100011000;
		/*	 ldi 	r17, 63 		*/
		4:		value = 16'b1110001100011111;
		/*	 out 	ocr0a, r17 		*/
		5:		value = 16'b1011101100010110;
		default:		value = 16'b0000000000000000;


        endcase
    end

    always @(negedge clk) begin
        data <= value;
    end

endmodule
