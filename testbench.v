`timescale 1ns/1ps

module HuffmanDecoder_tb (symbolLength, decodedData, ready, encodedData, load, clk, rst);

`include "../Huffman_backup/params.v"


input [4:0] decodedData;  
input [3:0] symbolLength;  
input       ready;

output reg [9:0] encodedData;  
output reg       clk;  
output reg       rst;  
output reg       load; 

reg encodedData2;

initial begin
   clk = 1'b1;
   forever #10 clk = ~clk;
end

initial begin
   rst = 1'b0;
   #200 rst = 1'b1;
end

initial 
   #10000 $finish;

always @(negedge clk or negedge rst) begin
   if (!rst) begin
       encodedData = 10'hzzz;
       encodedData2 = 10'hzzz;
       load = 1'b0;
   end
   else begin
       if (ready == 1'b1) begin
          //if (symbolLength == 4'd3)
          //    encodedData[9:0] = {encodedData[6:0], encodedData2[9:7]};
          encodedData[9:0] = {encodedData[6:0], $urandom(3)};
	  load = 1'b1;
       end
       else
          load = 1'b0;

   end //end else

end

//==============================================================
// Instantiate Design
//==============================================================
   HuffmanDecoder i_HuffmanDecoder (
                                    .clk (clk),
				    .rst (rst),
				    .encodedData (encodedData),
				    .load (load),
				    .ready (ready),
		                    .decodedData (decodedData),
		                    .symbolLength (symbolLength)
       		                   );

endmodule
