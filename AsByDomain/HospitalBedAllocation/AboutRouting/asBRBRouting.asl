/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(125B).
bedroom(125).
is_in(125B,125).
bedroom_is_routing(125,primary).
// Query Supported: bed_is_routing(125B,primary).
*/

defeasible_rule(bed_is_routing(Y,R),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bedroom_is_routing(Z,R)
])[as(asBRBRouting)].

+!translate(
	defeasible_rule(
		bed_is_routing(Y,R),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bedroom_is_routing(Z,R)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
			  "Bedroom ",Z," is of routing ",R,".\n",
			  "Therefore, bed ",Y," is of routing ",R,"."
			).