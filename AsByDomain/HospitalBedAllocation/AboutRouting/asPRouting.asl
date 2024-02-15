/*
//-------------   EXAMPLE   -------------\\	
patient(jhon).
has_one_attendance(jhon,primary).
// Query Supported: is_routing(jhon,primary)
*/

defeasible_rule(is_routing(X,R),
[
	patient(X),
	has_one_attendance(X,R)
])[as(_)].

+!translate(
	defeasible_rule(
		is_routing(X,R),
	[
		patient(X),
		has_one_attendance(X,R)
  ])[_]
)[_]:
   <- println("Patient ",X," has one attendance ",R,".\n",
			  "Therefore, patient ",X," is of routing ",R,"."
			).