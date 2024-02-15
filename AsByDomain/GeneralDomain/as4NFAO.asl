/*
//------------- EXAMPLE -------------\
has_property(coldness,opposite_of(hot)).
is_opposite(warmth,coldness).
// Query Supported: has_property(warmth,hot)
*/

defeasible_rule(has_property(S,P),
[
	has_property(R,opposite_of(P)),
	is_opposite(R,S)
])[as(as4NFAO)].

+!translate(
	defeasible_rule(
		has_property(S,P),
	[
		has_property(R,opposite_of(P)),
		is_opposite(R,S)
  ])[_]
)[_]:
   <- println(R," has the opposite of ",P," as a property.\n",
			  R," is the opposite of subject ",S,".\n",
			  "Therefore, ",S," has ",P," as a property."
			).