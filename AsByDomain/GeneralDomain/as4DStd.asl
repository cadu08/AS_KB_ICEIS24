/*
//------------- EXAMPLE -------------\
adopt(respondent(john), policy_respected_to(punctuality, work_meetings)),
adopt(respondent(john), policy_respected_to(flexibility, personal_gatherings)),
is_different(punctuality, flexibility),
is_similar(work_meetings, personal_gatherings)
// Query Supported: is_using_double_standard(respondent(john))
*/

defeasible_rule(is_using_double_standard(respondent(X)),
[
  adopt(respondent(X),policy_respected_to(P1,A)),
  adopt(respondent(X),policy_respected_to(P2,B)),
  is_different(P1,P2),
  is_similar(A,B)
])[as(as4DStd)].    
  cq(cq1, not can_be_explained(is_different(P1,P2)))[as(as4DStd)].

+!translate(
	defeasible_rule(
		is_using_double_standard(respondent(X)),
	[
	  adopt(respondent(X),policy_respected_to(P1,A)),
	  adopt(respondent(X),policy_respected_to(P2,B)),
	  is_different(P1,P2),
	  is_similar(A,B)
  ])[_]
)[_]:
   <- println("Respondent ",X," has the policy ",P1," with respect to ",A,
			  ", and policy ",P2," with respect to ",B,".\n",
			  P1," and ",P2," are different policies.\n",
			  A," and ",B," are similar.\n",
			  "Therefore, respondent ",X," is using a double standard."
			).