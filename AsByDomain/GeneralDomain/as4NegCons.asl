/*
//------------- EXAMPLE -------------\
consequence(bring_about(company, cut_down_forests), increase_in_CO2_levels).
bad_consequences_to(company, increase_in_CO2_levels).
// Query Supported: should_not(bring_about(company, cut_down_forests))
*/

defeasible_rule(should_not(bring_about(Z, Ac_1)),
[
	consequence(bring_about(Z, Ac_1), Ac_2),
	bad_consequences_to(Z, Ac_2)
])[as(as4NegCons)].

+!translate(
	defeasible_rule(
		should_not(bring_about(Z, Ac_1)),
	[
		consequence(bring_about(Z, Ac_1), Ac_2),
		bad_consequences_to(Z, Ac_2)
  ])[_]
)[_]:
   <- println("If ",Z," bring about ",Ac_1,", ",Ac_2," will be a consequence.\n",
			   Ac_2," implies bad consequences to ",Z,".\n",
			   "Therefore, ",Z," should not bring about ",Ac_1,"."
			).