/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(203A).
bedroom(203).
is_in(203A,203).
bed_is_care(203A,primary).
// Query Supported: bedroom_is_care(203,primary)
*/

defeasible_rule(bedroom_is_care(Z,C),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bed_is_care(Y,C)
])[as(asBBRCare)].

+!translate(
	defeasible_rule(
		bedroom_is_care(Z,C),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bed_is_care(Y,C)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
			  "Bed ",Y," is of care ",C,".\n",
			  "Therefore, bedroom ",Z," is of care ",C,"."
			).