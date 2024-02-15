/*
//------------- EXAMPLE -------------\
features(apple1,red,round,sweet).
features(apple2,red,round,sweet).
classified(apple1,fruit).
// Query Supported: classified(apple2,fruit)
*/

defeasible_rule(classified(A2,W),
[
	features(A1,A,B,C),
	features(A2,A,B,C),
	classified(A1,W)
])[as(as4ABC)].

+!translate(
	defeasible_rule(
		classified(A2,W),
	[
		features(A1,A,B,C),
		features(A2,A,B,C),
		classified(A1,W)
  ])[_]
)[_]:
   <- println(A1," has the features: ",A,", ",B," and ",C,".\n",
							A2," has also the same features.\n",
						 "So, ",A2," ought to be classified as ",W," too."
			).