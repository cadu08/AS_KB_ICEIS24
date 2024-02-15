/*
//------------- EXAMPLE -------------\
classification(mammal,animal).
be(whale,mammal).
// Query Supported: be(whale,animal)
*/

defeasible_rule(be(A,G),
[
	classification(F,G),
	be(A,F)
])[as(as4Class)].

+!translate(
	defeasible_rule(
		be(A,G),
	[
		classification(F,G),
		be(A,F)
  ])[_]
)[_]:
   <- println("All ",F," can be classified as ",G,".\n",
							A," is an ",F,".\n",
						 "Therefore, ",A," is an ",G,"."
			).