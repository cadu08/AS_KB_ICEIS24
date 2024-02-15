/*
//------------- EXAMPLE -------------\
consequence(bring_about(company, increase_prices), bring_about(consumers, boycott)).
bad_consequences_to(company, boycott).
// Query Supported: is_better(¬bring_about(company, increase_prices))
*/

defeasible_rule(is_better(¬bring_about(Z, Ac_1)),
[
	consequence(bring_about(Z, Ac_1),
	bring_about(X, Ac_2)),
	bad_consequences_to(Z, Ac_2)
])[as(as4T)].
	cq(cq1, is_in_position_to_bring_about(X, Ac_2)).

+!translate(
	defeasible_rule(
		is_better(¬bring_about(Z, Ac_1)),
	[
		consequence(bring_about(Z, Ac_1),
		bring_about(X, Ac_2)),
		bad_consequences_to(Z, Ac_2)
  ])[_]
)[_]:
   <- println("If ",Z," bring about ",Ac_1,", ",X," will bring about ",Ac_2,".\n",
			  Ac_2," result in bad consequences to ",Z,".",
			  "Therefore, is better ",Z," not bring about ",Ac_1,"."
			).