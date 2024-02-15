/*
//------------- EXAMPLE -------------\
similar(case123, case456).
act_classification(right, apologize, case123).
// Query Supported: act_classification(right, apologize, case456)
*/

defeasible_rule(act_classification(CLASSIFICATION,ACTION,CASE2),
[
	similar(CASE1,CASE2),
	act_classification(CLASSIFICATION,ACTION,CASE1)
])[as(pns4PA4A)].

+!translate(
	defeasible_rule(
		act_classification(CLASSIFICATION,ACTION,CASE2),
	[
		similar(CASE1,CASE2),
		act_classification(CLASSIFICATION,ACTION,CASE1)
  ])[_]
)[_]:
   <- println("The ",CLASSIFICATION," thing to do in ",CASE1," case was to ",ACTION,
							".\n",CASE2," case is similar to ",CASE1," case. Therefore, the ",
							CLASSIFICATION," thing to do in ",CASE2," case is to ",ACTION,"."
			).