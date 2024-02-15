/*
//------------- EXAMPLE -------------\
would_help(community, plant_trees).
can_carry_out(city_council, plant_trees).
not_too_costly(city_council, plant_trees).
// Query Supported: ought_to_carry_out(city_council, plant_trees)
*/

defeasible_rule(
	ought_to_carry_out(Y,A),
[
	would_help(Z,A),
	can_carry_out(Y,A),
	not_too_costly(Y,A)
])[as(as4NH)].

+!translate(
	defeasible_rule(
		ought_to_carry_out(Y,A),
	[
		would_help(Z,A),
		can_carry_out(Y,A),
		not_too_costly(Y,A)
  ])[_]
)[_]:
   <- println(A," would help ",Z,".\n",
			  Y," can carry out ",A,".\n",
			  "Is not too costly to ",Y,", carry out ",A,".\n",
			  "Therefore, ",Y," ought to carry out ",A,"."
			).