/*
//------------- EXAMPLE -------------\
everybody_in(university_community,accepts(science_is_good)).
position_to_know_about(university_community,science_is_good)
// Query Supported: science_is_good
*/

defeasible_rule(A,
[
  everybody_in(G,accepts(A)),
  position_to_know_about(G,A)
])[as(asP2KAdP)].

+!translate(
	defeasible_rule(
		A,
	[
		everybody_in(G,accepts(A)),
	    position_to_know_about(G,A)
  ])[_]
)[_]:
   <- println("Everybody in group ",G," accepts ",A," as true.\n",
			  "Group ",G," is an special position to know about ",A,".\n",
			  "Therefore, ",A," may be plausibly taken to be true."
			).