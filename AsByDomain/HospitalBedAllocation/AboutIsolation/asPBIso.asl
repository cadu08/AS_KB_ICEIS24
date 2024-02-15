/*
//-------------   EXAMPLE   -------------\\	
patient(charles).
is_isolation(charles,contact_precaution).
hospital_Bed(203A).
occupy_one(charles,203A).
// Query Supported: bed_is_isolation(203A,contact_precaution)
*/

defeasible_rule(bed_is_isolation(Y,I),
[
	patient(X),
	is_isolation(X,I),
	hospital_Bed(Y),
	occupy_one(X,Y)
])[as(asPBIso)].

+!translate(
	defeasible_rule(
		bed_is_isolation(Y,I),
	[
		patient(X),
		is_isolation(X,I),
		hospital_Bed(Y),
		occupy_one(X,Y)
  ])[_]
)[_]:
   <- println("Patient",X," occupy bed ",Y,".\n",
			  "Patient",X," is of isolation ",I,".\n",
			  "Therefore, bed ",Y," is of isolation ",I,"."
			).