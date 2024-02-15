/*
//-------------   EXAMPLE   -------------\\	
decision(case_1,plaintiff).
decision(case_2,defendant).
more_on_point(case_2,case_1).
// Query Supported: is_counterexample(case_2,case_1)
*/

defeasible_rule(is_counterexample(PC2,PC1),
[
	decision(PC1,P),
    decision(PC2,other_party(P)),
	more_on_point(PC2,PC1)
])[as(asCExp)].

+!translate(
	defeasible_rule(
		is_counterexample(PC2,PC1),
	[
		decision(PC1,P),
	    decision(PC2,other_party(P)),
		more_on_point(PC2,PC1)
  ])[_]
)[_]:
   <- println("The decision to the precedent case ",PC1," was to ",P,".\n",
			  "On the other hand, the decision to the precedent case ",PC2,
			  " was to the ",P," other party.\n",
			  PC2," and ",PC1," has more on point of similarity.\n"
			  "Therefore, ",PC2," is a counterexample to ",PC1,"."
			).