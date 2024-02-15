/*
//-------------   EXAMPLE   -------------\\	
patient(mary).
is_care(mary,primary).
hospital_Bed(203A).
occupy_one(mary,203A).
// Query Supported: bed_is_care(203A,primary)
*/

defeasible_rule(bed_is_care(Y,C),
[
	patient(X),
	is_care(X,C),
	hospital_Bed(Y),
	occupy_one(X,Y)
])[as(asPBCare)].

+!translate(
	defeasible_rule(
		bed_is_care(Y,C),
	[
		patient(X),
		is_care(X,C),
		hospital_Bed(Y),
		occupy_one(X,Y)
  ])[_]
)[_]:
   <- println("Patient ",X," occupy bed ",Y,".\n",
			  "Patient ",X," is of care ",C,".\n",
			  "Therefore, bed ",Y," is of care ",C,"."
			).