/*
//------------- EXAMPLE -------------\
similar(fraud_claim,embezzlement_claim,similarity(high)).
correct(verdict,fraud_claim).
// Query Supported: correct(verdict,embezzlement_claim)
*/

defeasible_rule(correct(P,C2),
[
	similar(C1,C2,similarity(S)),
	correct(P,C1)
])
[as(as4AnV2)].

+!translate(
	defeasible_rule(
		correct(P,C2),
	[
		similar(C1,C2,similarity(S)),
		correct(P,C1)
  ])[_]
)[_]:
   <- println("There are/is ",S," as a similarity between ",C1," and ",C2,".",
			  "This similarity is relevant to conclude that if the sentence ",P,
			  " is true for ",C1,", probably this sentence will be true for ",C2," too."
			).