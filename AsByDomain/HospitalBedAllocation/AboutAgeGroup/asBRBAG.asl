/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(202D),
bedroom(202),
is_in(202D,202),
bedroom_is_of_the_age_group(202,adult)
// Query Supported: bed_is_of_the_age_group(202D,adult)
*/

defeasible_rule(bed_is_of_the_age_group(Y,Ag),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bedroom_is_of_the_age_group(Z,Ag)
])[as(asBRBAG)].

+!translate(
	defeasible_rule(
		bed_is_of_the_age_group(Y,Ag)
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bedroom_is_of_the_age_group(Z,Ag)
  ])[_]
)[_]:
   <- println("Bedroom ",Y," is of the ",Ag," age group.\n",
			  "Bed ",Y," is in bedroom ",Z,".\n",
			  "Therefore, bed ",Y," is of the ",Ag," age group."
			).