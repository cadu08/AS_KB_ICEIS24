/*
//------------- EXAMPLE -------------\
is_commited_to(john, save_money).
is_commited_to(john, buy_expensive_car).
is_opposite_to(save_money, buy_expensive_car).
is_conclusion_of(buy_expensive_car, argument1).
// Query Supported: argument_refused(argument1)
*/

defeasible_rule(
	argument_refused(C),
[
	is_commited_to(X,A),
	is_commited_to(X,B),
	is_opposite_to(A,B), 
	is_conclusion_of(B,C)
])[as(as4IC)].    
	cq(cq1, not accepted(C)).

+!translate(
	defeasible_rule(
		argument_refused(C),
	[
		is_commited_to(X,A),
		is_commited_to(X,B),
		is_opposite_to(A,B), 
		is_conclusion_of(B,C)
  ])[_]
)[_]:
   <- println(X," is committed to proposition ",A,".\n",
			  X," is also committed to proposition ",B,", opposite of ",A," wich is a ",
			  "conclusion of the argument ",C," that ",B," presently advocates. \n",
			  "Therefore, ",A,"'s argument ",C," should not be accepted."
			).