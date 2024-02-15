/*
//------------- EXAMPLE -------------\
everybody_who_is(good_person, accept(advice)).
goal_of(john, good_person).
// Query Supported: should(john,accept(advice))
*/

defeasible_rule(should(X,accept(P)),
[
  everybody_who_is(good_person, accept(P)),
  goal_of(X, good_person)
])[as(asMJAdPA)].

+!translate(
	defeasible_rule(
		should(X,accept(P)),
	[
	   everybody_who_is(good_person, accept(P)),
	   goal_of(X, good_person)
  ])[_]
)[_]:
   <- println("Everybody who is a good person, accept ",P,".\n",
			   X,"'s goal is to be a good person.\n",
			  "Therefore, ",X," should accept ",P,"."
			).