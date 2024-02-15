/*
//-------------   EXAMPLE   -------------\\	
patient(ana).
is_years_old(ana,23).
greaterThan(23,17).
// Query Supported: is_of_the_age_group(ana,adult)
*/

defeasible_rule(is_of_the_age_group(X,adult),
[
	patient(X),
	is_years_old(X,A),
	greaterThan(A,17)
])[as(asPAGAdult)].

+!translate(
	defeasible_rule(
		is_of_the_age_group(X,adult),
	[
		patient(X),
		is_years_old(X,A),
		greaterThan(A,17)
  ])[_]
)[_]:
   <- println("Patient ",X," is ",A," years old.\n",
			  A," is greater than 17.\n",
			  "Therefore, patient ",X," is of the adult age group."
			).