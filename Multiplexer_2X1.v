module mux2X1 (i0,i1,s,out);
 input i0,i1,s;
 ouput reg out;
 // ouput out; // for Ternary operator for mux due "assign"
  //assign out= s ? i1:i0; // Ternary operator for mux
  
  // behaviour level abstraction
   always @(*) 
    begin
      case ({s})
        1'b0 : out=i0;
        1'b1 : out=i1;
        default : out= 1'bx;
      endcase
     end
        
  		
endmodule
