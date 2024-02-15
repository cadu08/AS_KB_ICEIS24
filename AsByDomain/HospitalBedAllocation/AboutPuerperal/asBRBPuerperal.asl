/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(208B).
bedroom(208).
is_in(208B,208).
bedroom_is_puerperal(208,a1).
// Query Supported: bed_is_puerperal(208B,a1)
*/

defeasible_rule(bed_is_puerperal(Y,Q),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bedroom_is_puerperal(Z,Q)
])[as(asBRBPuerperal)].

+!translate(
	defeasible_rule(
		bed_is_puerperal(Y,Q),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bedroom_is_puerperal(Z,Q)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
			  "Bedroom ",Z," is of puerperal ",Q,".\n",
			  "Therefore, bed ",Y," is of puerperal ",Q,"."
			).