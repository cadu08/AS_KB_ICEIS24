/*
//------------- EXAMPLE -------------\
goal(bring_about(peace)).
necessary_condition(bring_about(peace),bring_about(negotiations)).
// Query Supported: is_necessary(bring_about(negotiations))
*/

defeasible_rule(is_necessary(bring_about(Si)),
[
	goal(bring_about(Sn)),
	necessary_condition(bring_about(Sn),bring_about(Si))
])[as(asNecCond)].    
	cq(cq1, not alternatives(bring_about(Si)))[as(asNecCond)].
	cq(cq2, best(bring_about(Si)))[as(asNecCond)].
	cq(cq3, not other_preferable_goal(bring_about(Sj)))[as(asNecCond)].
	cq(cq4, possible(bring_about(Si)))[as(asNecCond)].
	cq(cq5, not bad_consequences(bring_about(Si)))[as(asNecCond)].

+!translate(
	defeasible_rule(
		is_necessary(bring_about(Si)),
	[
		goal(bring_about(Sn)),
		necessary_condition(bring_about(Sn),bring_about(Si))
  ])[_]
)[_]:
   <- println("Bringing about ",Sn,"is my goal.\n",
			  "In order to bring about ",Sn," bring about ",Si," is necessary.",
			  "Therefore, I need to bring about ",Si,"."
			).