/*
//------------- EXAMPLE -------------\
exceptional_case(r42, cases(c17)).
recognized_exception(r42, cases(c17)).
inapplicability_evidence(lack_of_jurisdiction).
comparable_cases(cases(c15,c16).
// Query Supported: waived_rule(r42,case(c17))
*/

defeasible_rule(waived_rule(RULE,CASE),
[
	exceptional_case(RULE, CASE)
])[as(as4EC)].    
	cq(cq1, recognized_exception(RULE, CASE))[as(as4EC)].
	cq(cq2, inapplicability_evidence(EVIDENCE))[as(as4EC)].
	cq(cq3, comparable_cases(CC))[as(as4EC)].

+!translate(
	defeasible_rule(
		waived_rule(RULE,CASE),
	[
		exceptional_case(RULE, CASE)
  ])[_]
)[_]:
   <- println("The case ",CASE," is an exception to rule ",RULE,".",
			  "Therefore, this established rule can be waived in this case."
			).