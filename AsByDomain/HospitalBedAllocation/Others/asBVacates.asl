/*
//-------------   EXAMPLE   -------------\\	
patient(katy),
is_discharged_from(katy,304E),
occupy_one(katy,304E)
// Query Supported: vacates_one(katy,304E)
*/

defeasible_rule(vacates_one(X,Y),
[
	patient(X),
	is_discharged_from(X,Y),
	occupy_one(X,Y)
])[as(asBVacates)].

+!translate(
	defeasible_rule(
		vacates_one(X,Y),
	[
		patient(X),
		is_discharged_from(X,Y),
		occupy_one(X,Y)
  ])[_]
)[_]:
   <- println("Patient ",X," occupies bed ",Y,".\n",
			  "Patient ",X," was discharged from bed ",Y,".\n",
			  "Therefore, patient ",X," has vacated bed ",Y,"."
			).