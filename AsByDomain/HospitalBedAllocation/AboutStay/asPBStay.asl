/*
//-------------   EXAMPLE   -------------\\	
	patient(mariah).
	is_stay(mariah,short).
	hospital_Bed(305C).
	occupy_one(mariah,305C).
// Query Supported: bed_is_stay(305C,short).
*/

defeasible_rule(bed_is_stay(Y,P),
[
	patient(X),
	is_stay(X,P),
	hospital_Bed(Y),
	occupy_one(X,Y)
])[as(asPBStay)].

+!translate(
	defeasible_rule(
		bed_is_stay(Y,P),
	[
		patient(X),
		is_stay(X,P),
		hospital_Bed(Y),
		occupy_one(X,Y)
  ])[_]
)[_]:
   <- println("Patient ",X," occupy bed ",Y,".\n",
							"Patient ",X," is of ",P," stay.\n"
							"Therefore, bed ",Y," is of ",P," stay."
			).