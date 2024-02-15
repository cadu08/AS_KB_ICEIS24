/*
//-------------   EXAMPLE   -------------\\	
patient(laura).
hospital_Bed(305B).
is_speciality(laura,neurology).
bed_is_speciality(305B,cardiology).
differentFrom(neurology,cardiology).
// Query Supported: is_unsuitable_for(305B,laura)
*/

defeasible_rule(is_unsuitable_for(Y,X),    
[
	patient(X),
	hospital_Bed(Y),
	is_speciality(X,Sp),
	bed_is_speciality(Y,Sb),
	differentFrom(Sp,Sb)
])[as(asSpecialityUnsuitable)].

+!translate(
	defeasible_rule(
		is_unsuitable_for(Y,X),
	[
		patient(X),
		hospital_Bed(Y),
		is_speciality(X,Sp),
		bed_is_speciality(Y,Sb),
		differentFrom(Sp,Sb)
  ])[_]
)[_]:
   <- println("Patient ",X," is of the ",Sp," speciality and bed ",Y," is of the ",Sb,
			  " speciality.\n", 
			  Sp," speciality is different from ",Sb," speciality.\n",
			  "Therefore, bed ",Y," is unsuitable for patient ",X
).