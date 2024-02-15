/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(304E).
bedroom(304).
is_in(304E,304).
bedroom_is_speciality(304,cardiology).
// Query Supported: bed_is_speciality(304E,cardiology)
*/

defeasible_rule(bed_is_speciality(Y,S),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bedroom_is_speciality(Z,S)
])[as(asBRBSpecialty)].

+!translate(
	defeasible_rule(
		bed_is_speciality(Y,S),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bedroom_is_speciality(Z,S)
  ])[_]
)[_]:
   <- println("Bedroom ",Z," is of the speciality ",S,".\n",
			  "Bed ",Y," is in bedroom ",Z,".\n",
			  "Therefore, bed ",Y," is of the speciality ",S,"."
			).