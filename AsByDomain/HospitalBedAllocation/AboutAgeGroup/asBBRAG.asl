/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(202D).
bedroom(202).
is_in(202D,202).
bed_is_of_the_age_group(202D,adult).
// Query Supported: bedroom_is_of_the_age_group(202,adult)
*/

defeasible_rule(bedroom_is_of_the_age_group(Z,Ag),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bed_is_of_the_age_group(Y,Ag)
])[as(asBBRAG)].

+!translate(
	defeasible_rule(
		bedroom_is_of_the_age_group(Z,Ag),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bed_is_of_the_age_group(Y,Ag)
  ])[_]
)[_]:
   <- println("Bed ",Y," is of the ",Ag," age group.\n",
			  "Bed ",Y," is in bedroom ",Z,".\n",
			  "Therefore, bedroom ",Z," is of the ",Ag," age group."
			).