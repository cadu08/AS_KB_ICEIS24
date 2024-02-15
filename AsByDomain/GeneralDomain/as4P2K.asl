/*
//------------- EXAMPLE -------------\
position_to_know(drSmith,medical_research).
asserts(drSmith,benefits_of_vaccination).
contain(medical_research,benefits_of_vaccination).
// Query Supported: benefits_of_vaccination
*/

defeasible_rule(Ar,
[
	position_to_know(A,S),
	asserts(A,Ar),
	contain(S,Ar)
])[as(as4P2K)].    
	cq(cq1, honest_source(A)).

+!translate(
	defeasible_rule(
		Ar,
	[
		position_to_know(A,S),
		asserts(A,Ar),
		contain(S,Ar)
  ])[_]
)[_]:
   <- println(A," is in position to know about things in a certain domain ",S,".\n",
			  A," asserts ",Ar,".\n",
			  S," contain ",Ar,".\n",
			  "Therefore, ",Ar," is true."
			).