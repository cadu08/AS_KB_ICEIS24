/*
//-------------   EXAMPLE   -------------\\	
patient(katy).
hospital_Bed(304E).
is_of_the_gender(katy,female).
bed_is_of_the_gender(304E,female).
is_of_the_age_group(katy,Adult).
bed_is_of_the_age_group(304E,Adult).
is_speciality(katy,cardiology).
bed_is_speciality(304E,cardiology).
is_care(katy,primary).
bed_is_care(304E,primary)
// Query Supported: is_suitable_for(304E,katy)
*/

defeasible_rule(is_suitable_for(Y,X),
	patient(X),
	hospital_Bed(Y),
	is_of_the_gender(X,G),
	bed_is_of_the_gender(Y,G),
	is_of_the_age_group(X,Ag),    
	bed_is_of_the_age_group(Y,Ag),
	is_speciality(X,S),
	bed_is_speciality(Y,S),
	is_care(X,C),
	bed_is_care(Y,C)
])[as(asSuitable)].

+!translate(
	defeasible_rule(
		is_suitable_for(Y,X),
	[
		patient(X),
		hospital_Bed(Y),
		is_of_the_gender(X,G),
		bed_is_of_the_gender(Y,G),
		is_of_the_age_group(X,Ag),    
		bed_is_of_the_age_group(Y,Ag),
		is_speciality(X,S),
		bed_is_speciality(Y,S),
		is_care(X,C),
		bed_is_care(Y,C)
  ])[_]
)[_]:
   <- println("Bed ",Y," has the same gender, age group, speciality, and care of ",
			  "patient ",X,".\n",
			  "Therefore, bed ",Y," is suitable for patient ",X
			).