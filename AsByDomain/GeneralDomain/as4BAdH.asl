/*
//------------- EXAMPLE -------------\
is_biased(alice, confirmation_bias).
is_proponent(alice, argument1).
is_part_of(argument1, debateClubDiscussion).
// Query Supported: no_credibility(argument1)
*/

defeasible_rule(no_credibility(Ar),
[
	is_biased(X,Bias),
	is_proponent(X,Ar),
	is_part_of(Ar, D)])
[as(as4BAdH)].
	cq(cq1, there_are_biased_evidences(Evidences)).
	cq(cq1, bad_bias_to_be_honest_on_dialogue(Bias, D).

+!translate(
	defeasible_rule(
		no_credibility(Ar),
	[
		is_biased(X,Bias),
		is_proponent(X,Ar),
		is_part_of(Ar, D)])
  ])[_]
)[_]:
   <- println(X," is biased with a bad bias to be honest on dialogue ",D,".\n",
							X," is proponent of argument ",Ar,", part of ",D,".\n",
							"Therefore, ",Ar," has no credibility."
			).