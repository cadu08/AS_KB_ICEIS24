/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(203A).
bedroom(203).
is_in(203A,203).
bedroom_is_isolation(203,contact_precaution).
// Query Supported: bed_is_isolation(203A,contact_precaution)
*/

defeasible_rule(bed_is_isolation(Y,I),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bedroom_is_isolation(Z,I)
])[as(asBRBIso)].

+!translate(
	defeasible_rule(
		bed_is_isolation(Y,I),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bedroom_is_isolation(Z,I)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
			  "Bedroom ",Z," is of isolation ",I,".\n",
			  "Therefore, bed ",Y," is of isolation ",I,"."
			).