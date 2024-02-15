/*
//------------- EXAMPLE -------------\
factors_favor(plaintiff(anna_dellie)).
opposite_litigants(defendant(john_doe),plaintiff(anna_dellie)).
// Query Supported: verdict_is_for(complement(defendant(john_doe)))
*/

defeasible_rule(verdict_is_for(complement(defendant(D))),
[
	factors_favor(plaintiff(P))
])[as(asFactCmpV2)].
    cq(cq1, opposite_litigants(plaintiff(P),defendant(D)))[as(as4VC)].

+!translate(
	defeasible_rule(
		verdict_is_for(complement(defendant(D)))
	[
		factors_favor(plaintiff(P))
    ])[_]
)[_]:
   <- println("Factors favor the plaintiff ",P,".\n",
			  "Therefore, the verdict is for the complement of the deffendant ",D,"."
			).