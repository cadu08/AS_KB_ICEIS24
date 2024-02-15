/*
//-------------   EXAMPLE   -------------\\	
patient(ana).
woman(ana).
// Query Supported: is_of_the_gender(ana,female)
*/

defeasible_rule(is_of_the_gender(X,female),
[
	patient(X),
	woman(X)
])[as(asPGenderFemale)].

+!translate(
	defeasible_rule(
		is_of_the_gender(X,female),
	[
		patient(X),
		woman(X)
  ])[_]
)[_]:
   <- println("Patient ",X," is a woman.\n",
			  "Therefore, patient ",X,"is of the gender female."
			).