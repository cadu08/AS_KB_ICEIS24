/*
//------------- EXAMPLE -------------\
occurs(rain).
strong_evidence(consequence(thunderstorm,rain)).
not there_are(counteract_factors(consequence(thunderstorm,rain))).
// Query Supported: ocurred(thunderstorm)
*/

defeasible_rule(ocurred(A),
[
  occurs(B)
])[as(as4E2C)]
  cq(cq1, there_are(strong_evidence(consequence(A,B))))[as(as4E2C)]
  cq(cq2, not there_are(counteract_factors(consequence(A,B))))[as(as4E2C)]

+!translate(
	defeasible_rule(
		ocurred(A),
	[
		occurs(B)
  ])[_]
)[_]:
   <- println("Generally, if ",A," occurs, then ",B," will occur.",
			  "In this case, ",B," occurs.",
			  "Therefore, ",A," also presumably ocurred."
			).