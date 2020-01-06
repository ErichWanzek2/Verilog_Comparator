module one_bit_comparator (A, B, GT, LT, EQ); //define module name, and inputs and outputs

	input A,B; //assigns input A, B
	output GT, LT, EQ; //assigns outputs GT, LT, EQ
	
	
	assign GT = A & (~B); //assigns Greater than value "GT" to the function A & (~B)
	assign EQ = (~A&~B)+(A&B); //assigns Equal to value "EQ to the function (~A&~B)+(A&B)
	assign LT = ~A&B; //assigns Less than value "LT" to the function ~A&B
	

endmodule //module now ended

