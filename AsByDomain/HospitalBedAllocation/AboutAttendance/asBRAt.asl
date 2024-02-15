/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(203A).
bedroom(203).
is_in(203A,203).
bed_is_the_attendance(203A,emergency).
// Query Supported: bedroom_is_the_attendance(203,emergency)
*/

defeasible_rule(bedroom_is_the_attendance(Z,At),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bed_is_the_attendance(Y,At)
])[as(asBRAt)].

+!translate(
	defeasible_rule(
		bedroom_is_the_attendance(Z,At),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bed_is_the_attendance(Y,At)
  ])[_]
)[_]:
   <- println("Bed ",Y," is in bedroom ",Z,".\n",
			  "Bed ",Y," is of attendance ",At,".\n"
			  "Therefore, bedroom ",Z," is of attendance ",At,"."
			).