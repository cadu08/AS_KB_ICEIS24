/*
//-------------   EXAMPLE   -------------\\	
patient(mary).
hospital_Bed(201A).
is_care(mary,primary).
bed_is_care(201A,surgical).
differentFrom(primary,surgical).
// Query Supported: is_unsuitable_for(201A,mary)
*/

defeasible_rule(is_unsuitable_for(Y,X),
[
	patient(X),
	hospital_Bed(Y),
	is_care(X,Cp),
	bed_is_care(Y,Cb),
	differentFrom(Cp,Cb)
])[as(asCareUnsuitable)].

+!translate(
	defeasible_rule(
		is_unsuitable_for(Y,X),
	[
		patient(X),
		hospital_Bed(Y),
		is_care(X,Cp),
		bed_is_care(Y,Cb),
		differentFrom(Cp,Cb)
  ])[_]
)[_]:
   <- println("Patient ",X," is of the ",Cp," care and bed ",Y," is of the ",Cb,
			  " care.\n", 
			  Cp," care is different from ",Cb," care.\n",
			  "Therefore, bed ",Y," is unsuitable for patient ",X
).