/*
//------------- EXAMPLE -------------\
factors_favor(defendant(john_doe)).
opposite_litigants(defendant(john_doe),plaintiff(anna_dellie)).
// Query Supported: verdict_is_for(complement(plaintiff(anna_dellie)))
*/

defeasible_rule(verdict_is_for(complement(plaintiff(P))),
[
	factors_favor(deffendant(D))
])[as(asFactCmpV2)].
    cq(cq1, opposite_litigants(defendant(D),plaintiff(P)).)[as(as4VC)].

+!translate(
	defeasible_rule(
		verdict_is_for(complement(plaintiff(P)))
	[
		factors_favor(deffendant(D))
  ])[_]
)[_]:
   <- println("Factors favor the deffendant ",D,".\n",
			  "Therefore, the verdict is for the complement of the plaintiff ",P,"."
			).