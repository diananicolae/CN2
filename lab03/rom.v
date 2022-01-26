module rom #(
        parameter   DATA_WIDTH = 16,
        parameter   ADDR_WIDTH = 8          // 2 * 1024 bytes of ROM
    )(
        input  wire                  clk,
        input  wire [ADDR_WIDTH-1:0] addr,  // here comes the program counter
        output  reg [DATA_WIDTH-1:0] data   // here goes the instruction
    );

    reg [DATA_WIDTH-1:0] value;

    /* de scris niste instructiuni valide */
    always @* begin
        case (addr)
		  	// r29 = 10	
		   /*	 ldi 	r29, 10  */
			0:		value = 16'b1110000011011010;
			// mem[10 - START] = 10
			/*	 sts 	r29, 10 		*/
			1:		value = 16'b1010100011011010;
			// r29 = 10	
			/*	 ldi 	r29, 0 		*/
			2:		value = 16'b1110000011010000;
			// r28 = 138
			/*	 ldi 	r28, 138 		*/
			3:		value = 16'b1110100011001010;
			// r27 = mem[r29:r28] = mem[138 - start]	
			/*	 ld 	r27, y 	*/
			4:		value = 16'b1000000110111000;
			// r28 = mem[10 - start]
			/*	 lds 	r28, 10 		*/
			5:		value = 16'b1010000011001010;
			// r27 = r28
			/*	 mov 	r27, r28 		*/
			6:		value = 16'b0010111110111100;
			default:		value = 16'b0000000000000000;

        endcase
    end

    always @(negedge clk) begin
        data <= value;
    end

endmodule
