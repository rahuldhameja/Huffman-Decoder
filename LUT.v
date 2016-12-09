/*
 * Verilog HDL for Look-Up Table 
 * containing Huffman Encoded Values
 * in the descending order of its
 * occurence.
 * 
 **/


module lookUpTable (
	            input enable,
	            input [4:0] symbol,
	            output reg [4:0] decodedData
                   );

always @(*) begin
        if (enable) 
	case (symbol)
		5'd0: begin
			decodedData = 5'd18;  // Symbol S
		      end
		5'd1: begin
			decodedData = 5'd10;  // Symbol K
                      end
		5'd2: begin
			decodedData = 5'd17;  // Symbol R
	              end
		5'd3: begin
			decodedData = 5'd9;  // Symbol J
                      end
		5'd4: begin
			decodedData = 5'd19;  // Symbol T
		      end
		5'd5: begin
			decodedData = 5'd16;  // Symbol Q
		      end
		5'd6: begin
			decodedData = 5'd8;  // Symbol I
		      end
		5'd7: begin
			decodedData = 5'd20;  // Symbol U
		      end
		5'd8: begin
			decodedData = 5'd11;  // Symbol L
		      end
		5'd9: begin
			decodedData = 5'd21;  // Symbol V
		      end
	       5'd10: begin
			decodedData = 5'd7;  // Symbol H
	     	      end
	       5'd11: begin
			decodedData = 5'd15;  // Symbol P
		      end
		5'd12: begin
			decodedData = 5'd12;  // Symbol M
		       end
		5'd13: begin
			decodedData = 5'd22;  // Symbol W
		       end
		5'd14: begin
			decodedData = 5'd6;  // Symbol G
		       end
		5'd15: begin
			decodedData = 5'd23;  // Symbol X
		       end
		5'd16: begin
			decodedData = 5'd14;  // Symbol O
		       end
		5'd17: begin
			decodedData = 5'd5;  // Symbol F
		       end
		5'd18: begin
			decodedData = 5'd13;  // Symbol N
		       end
		5'd19: begin
			decodedData = 5'd24;  // Symbol Y
		       end
		5'd20: begin
			decodedData = 5'd4;  // Symbol E
		       end
		5'd21: begin
			decodedData = 5'd25;  // Symbol Z
		       end
		5'd22: begin
			decodedData = 5'd26;  // Symbol a
		       end
		5'd23: begin
			decodedData = 5'd3;  // Symbol D
		       end
		5'd24: begin
			decodedData = 5'd2;  // Symbol C
		       end
		5'd25: begin
			decodedData = 5'd1;  // Symbol B
		       end
		5'd26: begin
			decodedData = 5'd29;  // Symbol d
		       end
		5'd27: begin
			decodedData = 5'd30;  // Symbol e
		       end
		5'd28: begin
			decodedData = 5'd28;  // Symbol c
		       end
		5'd29: begin
			decodedData = 5'd27;  // Symbol b
		       end
		5'd30: begin
			decodedData = 5'd31;  // Symbol f
		       end
		5'd31: begin
			decodedData = 5'd0;  // Symbol A
		       end
		default: begin
		          decodedData = 5'd0;  // Symbol A
		         end
               endcase
           else begin
	        decodedData = 5'hzz;
	   end
end

endmodule
