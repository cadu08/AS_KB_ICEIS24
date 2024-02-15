/*
//-------------   EXAMPLE   -------------\\	
patient(katy).
is_speciality(katy,cardiology).
hospital_Bed(304E).
occupy_one(katy,304E).
// Query Supported: bed_is_speciality(304E,cardiology)
*/

defeasible_rule(bed_is_speciality(Y,S),
[
	patient(X),
	is_speciality(X,S),
	hospital_Bed(Y),
	occupy_one(X,Y)
])[as(asPBSpeciality)].

+!translate(
	defeasible_rule(
		bed_is_speciality(Y,S),
	[
		patient(X),
		is_speciality(X,S),
		hospital_Bed(Y),
		occupy_one(X,Y)
  ])[_]
)[_]:
   <- println("Patient ",X," is of the speciality ",S,".\n",
			  "Patient ",X," occupies bed ",Y,".\n",
			  "Therefore, bed ",Y," is of the speciality ",S,"."
			).