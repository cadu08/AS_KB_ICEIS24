/*
//-------------   EXAMPLE   -------------\\	
patient(ana).
is_puerperal(ana,a1).
hospital_Bed(208B).
occupy_one(ana,208B).
// Query Supported: bed_is_puerperal(208B,a1)
*/

defeasible_rule(bed_is_puerperal(Y,Q),
[
	patient(X),
	is_puerperal(X,Q),
	hospital_Bed(Y),
	occupy_one(X,Y)
])[as(asPBPuerperal)].

+!translate(
	defeasible_rule(
		bed_is_puerperal(Y,Q),
	[
		patient(X),
		is_puerperal(X,Q),
		hospital_Bed(Y),
		occupy_one(X,Y)
  ])[_]
)[_]:
   <- println("Patient ",X," is of puerperal ",Q,".\n",
			  "Patient ",X," occupies bed ",Y,".\n",
			  "Therefore, bed ",Y," is of puerperal ",Q,"."
			).