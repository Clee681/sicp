;;; exercise 1.6

;;; The use of new-if results in an infinite loop as Lisp's interpreter follows
;;; applicative order evaluation. Before the new-if procedure is applied, it's
;;; subexpressions are evaluated one of which includes a recursive function call.
