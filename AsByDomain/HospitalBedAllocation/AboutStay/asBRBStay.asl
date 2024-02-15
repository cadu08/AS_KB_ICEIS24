/*
//-------------   EXAMPLE   -------------\\	
	hospital_Bed(305C).
	bedroom(305).
	is_in(305C,305).
	bedroom_is_stay(305,short).
// Query Supported: bed_is_stay(305C,short).
*/

defeasible_rule(bed_is_stay(Y,P),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bedroom_is_stay(Z,P)
])[as(asBRBStay)].

+!translate(
	defeasible_rule(
		bed_is_stay(Y,P),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bedroom_is_stay(Z,P)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
							"Bedroom ",Z," is of ",P," stay.\n",
							"Therefore, bed ",Y," is of ",P," stay."
			).