/*
//-------------   EXAMPLE   -------------\\	
position_to_know(john,contract_dispute).
states(john,breach_of_contract).
is_related_to(breach_of_contract,contract_dispute).
is_telling_the_truth(john).
credible(john,contract_dispute).
// Query Supported: breach_of_contract
*/

defeasible_rule(S,
	[
		position_to_know(W,D),
		states(W,S),
		is_related_to(S,D),
		is_telling_the_truth(W)
	]
)[as(as4WT)].
	cq(cq1, credible(W,D))[as(as4WT)].

+!translate(
	defeasible_rule(
		S,
	[
		position_to_know(W,D),
		states(W,S),
		is_related_to(S,D),
		is_telling_the_truth(W)
  ])[_]
)[_]:
   <- println(W," is in position to know about ",D,".\n",
			  W," states that ",S," is true.\n",
			  "The statement ",S," is related to ",D,".\n",
			  W," is supposedly telling the truth.\n",
			  W," has credibility to state about ",D,"\n",
			  "Therefore, ",S," may be plausibly taken to be true."
			).