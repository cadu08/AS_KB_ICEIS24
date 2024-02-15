/*
//-------------   EXAMPLE   -------------\\	
	patient(hugo).
	is_years_old(hugo,10).
	lessThan(10,12).
// Query Supported: is_of_the_age_group(hugo,child)
*/

defeasible_rule(is_of_the_age_group(X,child),
[
	patient(X),
	is_years_old(X,A),
	lessThan(A,12)
])[as(asPAGChild)].

+!translate(
	defeasible_rule(
		is_of_the_age_group(X,child),
	[
		patient(X),
		is_years_old(X,A),
		lessThan(A,12)
  ])[_]
)[_]:
   <- println("Patient ",X," is ",A," years old.\n",
			   A," is less than 12.\n",
			  "Therefore, patient ",X," is of the child age group."
			).