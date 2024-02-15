/*
//-------------   EXAMPLE   -------------\\	
patient(charles).
is_years_old(charles,16).
greaterThan(16,11).
lessThan(16,18).
Query Supported: is_of_the_age_group(charles,teenager)
*/

defeasible_rule(is_of_the_age_group(X,teenager),
[
	patient(X),
	is_years_old(X,A),
	greaterThan(A,11),
	lessThan(A,18)
])[as(asPAGTeenager)].

+!translate(
	defeasible_rule(
		is_of_the_age_group(X,teenager),
	[
		patient(X),
		is_years_old(X,A),
		greaterThan(A,11),
		lessThan(A,18)
  ])[_]
)[_]:
   <- println("Patient ",X," is ",A," years old.\n",
			   A," is greater than 11 and less than 18.\n",
			  "Therefore, patient ",X," is of the teenager age group."
			).