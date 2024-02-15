
/*
//------------- EXAMPLE -------------\
occurs(thunderstorm).
strong_evidence(consequence(thunderstorm,rain)).
not there_are(counteract_factors(consequence(thunderstorm,rain))).
// Query Supported: will_occur(rain)
*/

defeasible_rule(will_occur(B),
[
	occurs(A)
])[as(as4C2E)]
	cq(cq1, there_are(strong_evidence(consequence(A,B))))[as(as4C2E)]
  cq(cq2, not there_are(counteract_factors(consequence(A,B))))[as(as4C2E)]

+!translate(
	defeasible_rule(
		will_occur(B),
	[
		occurs(A)
  ])[_]
)[_]:
   <- println("Generally, if ",A," occurs, then ",B," will occur.",
			  "In this case, ",A," occurs.",
			  "Therefore, ",B," will occur."
			).