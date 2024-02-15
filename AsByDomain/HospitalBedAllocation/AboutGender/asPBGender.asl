/*
//-------------   EXAMPLE   -------------\\	
patient(hugo).
is_of_the_gender(hugo,male).
hospital_Bed(305C).
occupy_one(hugo,305C).
// Query Supported: bed_is_of_the_gender(305C,male).
*/

defeasible_rule(bed_is_of_the_gender(Y,G),
[
	patient(X),
	is_of_the_gender(X,G),
	hospital_Bed(Y),
	occupy_one(X,Y)
])[as(asPBGender)].

+!translate(
	defeasible_rule(
		bed_is_of_the_gender(Y,G),
	[
		patient(X),
		is_of_the_gender(X,G),
		hospital_Bed(Y),
		occupy_one(X,Y)
  ])[_]
)[_]:
   <- println("Patient ",X," is of the gender ",G,".\n",
			  "Patient ",X," occupies bed ",Y,".\n",
			  "Therefore, bed ",Y," is of the gender ",G,"."
			).