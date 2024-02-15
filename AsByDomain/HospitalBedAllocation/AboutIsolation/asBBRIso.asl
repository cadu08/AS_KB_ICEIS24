/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(203A).
bedroom(203).
is_in(203A,203).
bed_is_isolation(203A,contact_precaution).
// Query Supported: bedroom_is_isolation(203,contact_precaution)
*/

defeasible_rule(bedroom_is_isolation(Z,I),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bed_is_isolation(Y,I)])
[as(asBBRIso)].

+!translate(
	defeasible_rule(
		bedroom_is_isolation(Z,I),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bed_is_isolation(Y,I)
  ])[asBBRIso]
)[asBBRIso]:
   <- println("Bed",Y," is in bedroom ",Z,".\n",
			  "Bed",Y," is of isolation ",I,".\n",
			  "Therefore, bedroom ",Z," is of isolation ",I,"."
			).