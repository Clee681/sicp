; exercise 1.4

; Describe the behavior of the following procedure

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The steps for evaluating a combination are as follows:
; 1) evaluate the subexpressions of the combination
; 2) apply the procedure that is the value of the leftmost subexpression
;    (the operator) to the operands

; In the above case, the if subexpression is first evaluated. Within the if
; combination, the first argument expression (aka predicate) is evaluated.
; Once the predicate is evaluated, the consequent and alternative expressions
; are also evaluated. After all subexpressions are evaluated, the if procedure
; is applied resulting in either the consequent or alternative value, which in
; this case is actually a primitive procedure. We are then left with either
; (+ a b) or (- a b). Following the same process, each of the subexpressions
; are evaluated (note: 'evaluated' is used very loosely since each subexpression
; is already a primitive) after which the corresponding operator procedure
; (i.e. + or -) is applied to the arguments.
