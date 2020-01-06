module top_level (SW, LEDR); //define module name and inputs and outputs
	
	input wire [3:0] SW; //assigns the three input switches
	output wire [6:0] LEDR; //assigns the six output LEDs
	
	assign LEDR[3:0] = SW[3:0]; // assigns 4 LEDS to 4 switches
	
	two_bit_comparator inst0 (SW[3:2], SW[1:0], LEDR[6], LEDR[5], LEDR[4]); // calls the module two_bit_comparator

endmodule //module now ended
