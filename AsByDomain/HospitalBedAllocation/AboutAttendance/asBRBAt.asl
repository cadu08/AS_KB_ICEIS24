/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(203A).
bedroom(203).
is_in(203A,203).
bedroom_is_the_attendance(203,emergency).
// Query Supported: bed_is_the_attendance(203A,emergency)
*/

defeasible_rule(bed_is_the_attendance(Y,At),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bedroom_is_the_attendance(Z,At)
])[as(asBRBAt)].

+!translate(
	defeasible_rule(
		bed_is_the_attendance(Y,At),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bedroom_is_the_attendance(Z,At)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
			  "Bedroom ",Z," is of attendance ",At,".\n"
			  "Therefore, bed ",Y," is of attendance ",At,"."
			).