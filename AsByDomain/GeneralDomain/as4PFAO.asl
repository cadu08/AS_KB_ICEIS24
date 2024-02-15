/*
//------------- EXAMPLE -------------\
has_property(warmth,hot).
is_opposite(coldness,warmth).
// Query Supported: has_property(coldness, opposite_of(hot))
*/

defeasible_rule(has_property(S, opposite_of(P)),
[
	has_property(R,P),
	is_opposite(R,S)
])[as(as4PFAO)].

+!translate(
	defeasible_rule(
		has_property(S, opposite_of(P)),
	[
		has_property(R,P),
		is_opposite(R,S)
  ])[_]
)[_]:
   <- println(R," has the property ",P,".\n",
			  R," is the opposite of subject ",S,".\n",
			  "Therefore, ",S," has the opposite of ",P," as a property."
			).