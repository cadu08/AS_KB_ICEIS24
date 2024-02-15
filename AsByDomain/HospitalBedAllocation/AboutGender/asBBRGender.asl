/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(305C).
bedroom(305).
is_in(305C,305).
bed_is_of_the_gender(305C,male).
// Query Supported: bedroom_is_of_the_gender(305,male)
*/

defeasible_rule(bedroom_is_of_the_gender(Z,G),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bed_is_of_the_gender(Y,G)
])[as(asBBRGender)].

+!translate(
	defeasible_rule(
		bedroom_is_of_the_gender(Z,G),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bed_is_of_the_gender(Y,G)
  ])[_]
)[_]:
   <- println("Bed ",Z," is of the gender ",G,".\n",
			  "Bed ",Y," is in bedroom ",Z,".\n",
			  "Therefore, bedroom ",Z," is of the gender ",G,"."
			).