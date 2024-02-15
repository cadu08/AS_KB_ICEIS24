/*
//-------------   EXAMPLE   -------------\\	
patient(hugo).
man(hugo).
// Query Supported: is_of_the_gender(hugo,male)
*/

defeasible_rule(is_of_the_gender(X,male),
[
	patient(X),
	man(X)
])[as(asPGenderMale)].

+!translate(
	defeasible_rule(
		is_of_the_gender(X,male),
	[
		patient(X),
		man(X)
  ])[_]
)[_]:
   <- println("Patient ",X," is a man.\n",
			  "Therefore, patient ",X,"is of the gender male."
			).