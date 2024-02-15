/*
//------------- EXAMPLE -------------\
similar(contract_violation,agreement_breach).
correct(judgment,contract_violation).
// Query Supported: correct(judgment,agreement_breach)
*/

defeasible_rule(correct(P,C2),
[
	similar(C1,C2),
	correct(P,C1)
])[as(as4AnV1)].

+!translate(
	defeasible_rule(
		correct(P,C2),
	[
		similar(C1,C2),
		correct(P,C1)
  ])[_]
)[_]:
   <- println("The proposition ",P," is true/false to ",C1,".\n",
			  "It's known that ",C1," and ",C2," are similar.\n",
			  "Therefore, for analogy, the proposition ",P,
			  " is also true/false to ",C2,"."
			).