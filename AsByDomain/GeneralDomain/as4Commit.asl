/*
//------------- EXAMPLE -------------\
is_commited_to(john,team_work).
is_part_of(team_work,project_1).
is_part_of(meeting,project_1).
imply(is_commited_to(john,team_work), is_commited_to(john,meeting)).
// Query Supported: will_be_commited_to(john,meeting)
*/

defeasible_rule(will_be_commited_to(X,B),
[
    is_commited_to(X,A)
])as(as4Commit)].
    cq(cq1, is_part_of(A,D))[as(as4Commit)].
    cq(cq2, is_part_of(B,D))[as(as4Commit)].
    cq(cq3, imply(is_commited_to(X,A), is_commited_to(X,B)))[as(as4Commit)].

+!translate(
	defeasible_rule(
		will_be_commited_to(X,B),
	[
		is_commited_to(X,A)
    ])[_]
)[_]:
   <- println("If ",X," is commited to ",A," at some point in dialogue ",D,", then ",X,
			  "also will be commited to ",B," at some later point in ",D,"."
			).