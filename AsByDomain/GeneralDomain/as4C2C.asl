/*
//------------- EXAMPLE -------------\
there_is(positive_correlation(smoking,cancer)).
significant(positive_correlation(smoking,cancer)).
there_are(evidences(relationship_direction(from(smoking),to(cancer)))).
// Query Supported: causes(smoking,cancer)
*/

defeasible_rule(causes(A,B),
	there_is(positive_correlation(A,B))
)[as(as4C2C)]
	cq(cq1,significant(positive_correlation(A,B)))[as(as4C2C)].
	cq(cq2,there_are(evidences(relationship_direction(from(A),to(B)))))[as(as4C2C)].

+!translate(
	defeasible_rule(
		causes(A,B),
	[
		there_is(positive_correlation(A,B))
  ])[_]
)[_]:
   <- println("There is a positive correlation between ",A," and ",B,".",
			  "Therefore, ",A," causes ",B,"."
			 ).