/*
//------------- EXAMPLE -------------\
argument_of(person(john),argument(123)).
bad_person(person(john)).
association(person(john),associeted_with(group(radical_group))).
morally_condemned(group(radical_group)).
// Query Supported: should_not(be_accepted(argument(123)))
*/

defeasible_rule(bad_person(A),
[
  association(person(A),associeted_with(group(G))),
  morally_condemned(group(G))
]
)[as(asGbyAP1)].

defeasible_rule(should_not(be_accepted(argument(Ar))),
[
  argument_of(person(A),argument(Ar)),
  bad_person(person(A))
]
)[as(asGbyAP2)]

+!translate(
	defeasible_rule(
	  should_not(be_accepted(argument(Ar))),
	[
	  argument_of(person(A),argument(Ar)),
	  bad_person(person(A))
  ])[_]
)[_]:
   <- println(A," is associated with group ",G," wich should be morally condemned.\n",
			  "Therefore, ",A," is considered a bad person.",
			  "Also, ",A,"'s argument ",Ar," should not be accepted."
			).