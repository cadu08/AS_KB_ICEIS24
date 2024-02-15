/*
//-------------   EXAMPLE   -------------\\	
hospital_Bed(304E).
bedroom(304).
is_in(304E,304).
bed_is_speciality(304E,cardiology).
// Query Supported: bedroom_is_speciality(304,cardiology)
*/

defeasible_rule(bedroom_is_speciality(Z,S),
[
	hospital_Bed(Y),
	bedroom(Z),
	is_in(Y,Z),
	bed_is_speciality(Y,S)
])[as(asBBRSpeciality)].

+!translate(
	defeasible_rule(
		bedroom_is_speciality(Z,S),
	[
		hospital_Bed(Y),
		bedroom(Z),
		is_in(Y,Z),
		bed_is_speciality(Y,S)
  ])[_]
)[_]:
   <- println("Bed ",Y," is of the speciality ",S,".\n",
			  "Bed ",Y," is in bedroom ",Z,".\n",
			  "Therefore, bedroom ",Z," is of the speciality ",S,"."
			).