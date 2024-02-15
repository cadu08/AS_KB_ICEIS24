/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(305C).
bedroom(305).
is_in(305C,305).
bedroom_is_of_the_gender(305,male).
// Query Supported: bed_is_of_the_gender(305C,male)
*/

defeasible_rule(bed_is_of_the_gender(Y,G),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bedroom_is_of_the_gender(Z,G)
])[as(asBRBGender)].

+!translate(
	defeasible_rule(
		bed_is_of_the_gender(Y,G),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bedroom_is_of_the_gender(Z,G)
  ])[_]
)[_]:
   <- println("Bedroom ",Z," is of the gender ",G,".\n",
			  "Bed ",Y," is in bedroom ",Z,".\n",
			  "Therefore, bed ",Y," is of the gender ",G,"."
			).