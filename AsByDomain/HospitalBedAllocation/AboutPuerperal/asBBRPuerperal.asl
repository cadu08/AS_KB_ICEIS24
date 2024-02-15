/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(208B).
bedroom(208).
is_in(208B,208).
bed_is_puerperal(208B,a1).
// Query Supported: bedroom_is_puerperal(208,a1)
*/

defeasible_rule(bedroom_is_puerperal(Z,Q),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bed_is_puerperal(Y,Q)
])[as(asBBRPuerperal)].

+!translate(
	defeasible_rule(
		bedroom_is_puerperal(Z,Q),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bed_is_puerperal(Y,Q)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
			  "Bed ",Y," is of puerperal ",Q,".\n",
			  "Therefore, bedroom ",Z," is of puerperal ",Q,"."
			).