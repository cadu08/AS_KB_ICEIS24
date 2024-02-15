/*
//-------------   EXAMPLE   -------------\\	
	hospital_Bed(305C).
	bedroom(305).
	is_in(305C,305).
	bed_is_stay(305C,short).
// Query Supported: bedroom_is_stay(305,short)
*/

defeasible_rule(bedroom_is_stay(Z,P),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bed_is_stay(Y,P)
])[as(asBBRStay)].

+!translate(
	defeasible_rule(
		bedroom_is_stay(Z,P),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bed_is_stay(Y,P)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
			  "Bed ",Y," is of ",P," stay.\n",
			  "Therefore, bedroom ",Z," is of ",P," stay."
			).
