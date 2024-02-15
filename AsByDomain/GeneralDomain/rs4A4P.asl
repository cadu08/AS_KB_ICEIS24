/*
//------------- EXAMPLE -------------\
usual_consequence(rule123, expansion, high_temperature).
property(chemical_element, expansion).
// Query Supported: must_modify(rule123, water)
*/

defeasible_rule(must_modify(RULE,CASE),
[
	usual_consequence(X,PropertyF,PropertyG),
	property(X,PropertyF)
])[as(rs4A4P)].
	cq(cq1, apply(RULE,CASE))[as(rs4A4P)].
	cq(cq2, legitimate(CASE))[as(rs4A4P)].
	cq(cq2, already_recognized_category(CASE))[as(rs4A4P)].

+!translate(
	defeasible_rule(
		must_modify(RULE,CASE),
	[
		usual_consequence(X,PropertyF,PropertyG),
		property(X,PropertyF)
  ])[_]
)[_]:
   <- println("Generally, according to the stablished ",RULE," rule, ",
							"if ",X," has property ",PropertyF,", then also has property ",PropertyG,
							".\n Therefore, an exception to the rule must be recognized, and the ",
							"rule must be appropriately modified or qualified."
			).