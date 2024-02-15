/*
//-------------   EXAMPLE   -------------\\	
patient(ana),
is_of_the_age_group(ana,adult),
hospital_Bed(202D),
occupy_one(ana,202D)
// Query Supported: bed_is_of_the_age_group(202D,adult)
*/

defeasible_rule(bed_is_of_the_age_group(Y,Ag),
[
	patient(X),
	is_of_the_age_group(X,Ag),
	hospital_Bed(Y),
	occupy_one(X,Y)
])[as(asPBAG)].

+!translate(
	defeasible_rule(
		bed_is_of_the_age_group(Y,Ag),
	[
		patient(X),
		is_of_the_age_group(X,Ag),
		hospital_Bed(Y),
		occupy_one(X,Y)
  ])[_]
)[_]:
   <- println("Patient ",X," is of the ",Ag," age group.\n",
			  "Patient ",X," occupies bed ",Y,".\n",
			  "Therefore, bed ",Y," is of the ",Ag," age group."
			).