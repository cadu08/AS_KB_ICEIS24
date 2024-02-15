/*
//-------------   EXAMPLE   -------------\\	
patient(hugo).
hospital_Bed(220C).
is_of_the_age_group(hugo,child).
bed_is_of_the_age_group(220C,adult).
differentFrom(child,adult).
// Query Supported: is_unsuitable_for(220C,hugo)
*/

defeasible_rule(is_unsuitable_for(Y,X),
[
	patient(X),
	hospital_Bed(Y),
	is_of_the_age_group(X,Ap),
	bed_is_of_the_age_group(Y,Ab),
	differentFrom(Ap,Ab)
])[as(asAGUnsuitable)].

+!translate(
	defeasible_rule(
		is_unsuitable_for(Y,X),
	[
		patient(X),
		hospital_Bed(Y),
		is_of_the_age_group(X,Ap),
		bed_is_of_the_age_group(Y,Ab),
		differentFrom(Ap,Ab)
  ])[_]
)[_]:
   <- println("Patient ",X," is of the ",Ap," age group and bed ",Y," is of the ",Ab,
			  " age group.\n", 
			  Ap," age group is different from ",Ab," age group.\n",
			  "Therefore, bed ",Y," is unsuitable for patient ",X
).