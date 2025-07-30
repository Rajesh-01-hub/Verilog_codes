// synthesis verilog_input_version verilog_2001
/*If (cpu_overheated) then shut_off_computer = 1;
If (~arrived) then keep_driving = ~gas_tank_empty;
What happens in the cases other than those you specified?". Verilog's answer is: Keep the outputs unchanged.
Combinational logic (e.g., logic gates) cannot remember any state. */
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else
            shut_off_computer = 0;
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
        else
            keep_driving = 0;
    end

endmodule
