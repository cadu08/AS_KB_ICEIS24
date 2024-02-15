/*
//------------- EXAMPLE -------------\
categorie("heresy", "crime").
property("crime", "punishable").
property("John's affirmation", "heresy").
not doubt("heresy", "punishable").
not weak("heresy", "punishable").
// Query Supported: property("John's affirmation", "punishable")
*/

defeasible_rule(property(A,F),
[
	categorie(A,C),
	property(C,F)
])[as(as4VC)].
	cq(cq1, not doubt(A,F))[as(as4VC)].
	cq(cq2, not weak(A,F))[as(as4VC)].

+!translate(
	defeasible_rule(
		property(A,F),
	[
		categorie(A,C),
		property(C,F)
  ])[_]
)[_]:
   <- println("All ",C," is ",F,".",
			  A," can be classified as ",C,
			  "Therefore, ",A," is ",F,"."
			).