/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(125B).
bedroom(125).
is_in(125B,125).
bed_is_routing(125B,primary).
// Query Supported: bedroom_is_routing(125,primary).
*/

defeasible_rule(
	bedroom_is_routing(Z,R),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bed_is_routing(Y,R)
])[as(asBBRRouting)].

+!translate(
	defeasible_rule(
		bedroom_is_routing(Z,R),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bed_is_routing(Y,R)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
			  "Bed ",Y," is of routing ",R,".\n",
			  "Therefore, bedroom ",Z," is of routing ",R,"."
			).