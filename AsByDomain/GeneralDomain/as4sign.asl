/*
//------------- EXAMPLE -------------\
there_are(marks_along(bear,trail)).
// Query Supported: passed(bear,trail)
*/

defeasible_rule(passed(A,B),
[
	there_are(marks_along(A,B))
])[as(from_sign)].    
	cq(cq1, not planted(marks_along(A,B)))[as(as4sign)].

+!translate(
	defeasible_rule(
		passed(A,B),
	[
		there_are(marks_along(A,B))
    ])[_]
)[_]:
   <- println("There are ",A," marks along ",B,".\n",
							"Therefore, ",A," passed along ",B,"."
			).