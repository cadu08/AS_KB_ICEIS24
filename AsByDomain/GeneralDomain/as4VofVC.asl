/*
//------------- EXAMPLE -------------\
is_property_of(height,structure).
is_vague_to_requirements(height).
occurs_in(structure,context_that_require(accurate_measurements)).
// Query Supported: deficient(structure)
*/

defeasible_rule(deficient(Ar),
[
	is_property_of(F,Ar),
	is_vague_to_requirements(F),
	occurs_in(Ar,context_that_require(PL))
])[as(as4VofVC)].
	cq(cq1,is_required(PL))[as(as4VofVC)].

+!translate(
	defeasible_rule(
		deficient(Ar),
	[
		is_property_of(F,Ar),
		is_vague_to_requirements(F),
		occurs_in(Ar,context_that_require(PL))
  ])[_]
)[_]:
   <- println(F," is a property of ",Ar,".\n",
			  "Property ",F," is considered vague to meet the ",PL," precision level."
			  Ar," occurs in a context that require ",PL," as precision level.\n",
			  "Therefore, ",Ar," ought to be rejected as deficient."
			).