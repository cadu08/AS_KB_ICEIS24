/*
//-------------   EXAMPLE   -------------\\	
patient(jhon).
hospital_Bed(125B).
is_of_the_gender(jhon,male).
bed_is_of_the_gender(125B,female).
differentFrom(male,female).
// Query Supported: is_unsuitable_for(125B,jhon)
*/

defeasible_rule(is_unsuitable_for(Y,X),
	patient(X),
	hospital_Bed(Y),
	is_of_the_gender(X,Gp),
	bed_is_of_the_gender(Y,Gb),
	differentFrom(Gp,Gb)
])[as(asGenderUnsuitable)].

+!translate(
	defeasible_rule(
		is_unsuitable_for(Y,X),
	[
		patient(X),
		hospital_Bed(Y),
		is_of_the_gender(X,Gp),
		bed_is_of_the_gender(Y,Gb),
		differentFrom(Gp,Gb)
  ])[_]
)[_]:
   <- println("Patient ",X," is of the ",Gp," gender and bed ",Y," is of the ",Gb,
			  " gender.\n", 
			  Gp," gender is different from ",Gb," gender.\n",
			  "Therefore, bed ",Y," is unsuitable for patient ",X
).