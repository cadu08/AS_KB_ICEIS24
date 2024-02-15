/*
//-------------   EXAMPLE   -------------\\	
patient(jhon).
is_routing(jhon,primary).
hospital_Bed(125B).
occupy_one(jhon,125B).
// Query Supported: bed_is_routing(125B,primary).
*/

defeasible_rule(bed_is_routing(Y,R),
[
	patient(X),
	is_routing(X,R),
	hospital_Bed(Y),
	occupy_one(X,Y)
])[as(asPBRouting)].

+!translate(
	defeasible_rule(
		bed_is_routing(Y,R),
	[
		patient(X),
		is_routing(X,R),
		hospital_Bed(Y),
		occupy_one(X,Y)
  ])[_]
)[_]:
   <- println("Patient ",X," is of routing ",R,".\n",
			  "Patient ",X," occupies bed ",Y,".\n",
			  "Therefore, bed ",Y," is of routing ",R,"."
			).