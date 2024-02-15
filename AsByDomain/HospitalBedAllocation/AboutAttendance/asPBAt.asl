/*
//-------------   EXAMPLE   -------------\\	
patient(charles),
is_the_attendance(charles,emergency),
hospital_Bed(203A),
occupy_one(charles,203A)
// Query Supported: bed_is_the_attendance(203A,emergency)
*/

defeasible_rule(bed_is_the_attendance(Y,At),
[
	patient(X),
	is_the_attendance(X,At),
	hospital_Bed(Y),
	occupy_one(X,Y)
])[as(asPBAt)].

+!translate(
	defeasible_rule(
		bed_is_the_attendance(Y,At),
	[
		patient(X),
		is_the_attendance(X,At),
		hospital_Bed(Y),
		occupy_one(X,Y)
  ])[_]
)[_]:
   <- println("Patient ",X," occupy bed ",Y,".\n",
			  "Patient ",X," is of attendance ",At,".\n"
			  "Therefore, bed ",Y," is of attendance ",At,"."
			).