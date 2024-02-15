/*
//------------- EXAMPLE -------------\
decision(case123,plaintiff(john_doe)).
there_is(is_counterexample(case124,case123)).
preference(case123).
// Query Supported: factors_favor(plaintiff(john_doe))
*/

defeasible_rule(factors_favor(plaintiff(P)),
[
    decision(PC1,paintiff(P)),
    there_is(is_counterexample(PC2,PC1)),
    preference(PC1)
])[as(asP4P)].

+!translate(
	defeasible_rule(
		factors_favor(plaintiff(P)),
	[
		decision(PC1,paintiff(P)),
	    there_is(is_counterexample(PC2,PC1)),
        preference(PC1)
  ])[_]
)[_]:
   <- println("There is a precedent case ",PC1," decided to the plaintiff ",P,".\n",
              "On the other hand, there is a counterexample ",PC2,
              "In this case, the preference was to ",PC1,".\n",
              "Therefore, factors favor the plaintiff ",P,"."
			).