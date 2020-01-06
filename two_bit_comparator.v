module two_bit_comparator (A, B, LT, GT, EQ); // define module name and inputs and outputs
	
	input [1:0] A,B;     // assign inputs
	output GT, LT, EQ;  // assign outputs 
	wire EQ_1, EQ_0 ,LT_1 ,LT_0, GT_1, GT_0; //assign wires 
	
	one_bit_comparator inst0 (A[1], B[1], GT_1, LT_1, EQ_1); //call module one__bit_comparator to compare most significant bit
	
	one_bit_comparator inst1 (A[0], B[0], GT_0, LT_0, EQ_0); //call module one__bit_comparator to compare least significant bit
	
	
	//compare LSB bit and MSB bits
	
	assign GT = GT_1 + (EQ_1 & GT_0); //assigns Greater than value "GT" to the function GT_1 + (EQ_1 & GT_0)
	assign EQ = (EQ_1 & EQ_0); //assigns Equal to value "EQ to the function (EQ_1 & EQ_0)
	assign LT = LT_1 + (EQ_1 & LT_0);//assigns Less than value "LT" to the function LT_1 + (EQ_1 & LT_0)
	
	
	
	
endmodule //module now ended

