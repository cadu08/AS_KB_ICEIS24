/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(203A).
bedroom(203).
is_in(203A,203).
bedroom_is_care(203,primary).
// Query Supported: bed_is_care(203A,primary)
*/

defeasible_rule(bed_is_care(Y,C),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bedroom_is_care(Z,C)
])[as(asBRBCare)].

+!translate(
	defeasible_rule(
		bed_is_care(Y,C),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bedroom_is_care(Z,C)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
			  "Bedroom ",Z," is of care ",C,".\n",
			  "Therefore, bed ",Y," is of care ",C,"."
			).