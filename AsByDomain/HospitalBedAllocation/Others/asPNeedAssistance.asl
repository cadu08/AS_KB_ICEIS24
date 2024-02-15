/*
//-------------   EXAMPLE   -------------\\	
patient(mariah),
is_classified_as(mariah,urgent)
// Query Supported: needs_assistance_like(mariah,hospitalisation)
*/

defeasible_rule(needs_assistance_like(X,hospitalisation),
[
		patient(X),
		is_classified_as(X,urgent)
])[as(asPNeedAssistance)].

+!translate(
	defeasible_rule(
		needs_assistance_like(X,hospitalisation),
	[
		patient(X),
		is_classified_as(X,urgent)
  ])[_]
)[_]:
   <- println("Patient ",X," is classified as urgent.\n",
			  "Therefore, patient ",X," needs assistance like hospitalisation."
			).