/*
//------------- EXAMPLE -------------\
rule(john,submit_report).
requirements_rule(submit_report).
not conflicting_rule(delay_submission).
not excuses(illness).
// Query Supported: carry_out(john,submit_report)
*/

defeasible_rule(carry_out(X,A),
[
	rule(X,A)
])[as(as4ER)].        
	cq(cq1, requirements_rule(A))[as(as4ER)].
	cq(cq2, not conflicting_rule(B))[as(as4ER)].
	cq(cq2, not excuses(E))[as(as4ER)].

+!translate(
	defeasible_rule(
		carry_out(X,A),
	[
		rule(X,A)
  ])[_]
)[_]:
   <- println("The ",A," rule was established for ",X,".",
			  "Therefore, ",X," must carry out ",A,"."
			).