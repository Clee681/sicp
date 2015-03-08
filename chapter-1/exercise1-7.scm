;;; exercise 1.7

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

;;; Newton's method
(define (improve guess x)
  (average guess (/ x guess)))

;;; alternate strategy for good-enough? based on guess changing as a fraction of previous guess

(define (guess-lower-bound guess fraction)
  (- guess (* guess fraction)))

(define (guess-upper-bound guess fraction)
  (+ guess (* guess fraction)))

(define (good-enough? guess1 guess2)
  (and (>= guess2 (guess-lower-bound guess1 1/1000))
       (<= guess2 (guess-upper-bound guess1 1/1000))))

(define (sqrt-iter guess x previous-guess)
  (if (good-enough? previous-guess guess)
      guess
      (sqrt-iter (improve guess x)
                 x
		 guess)))

(define (sqrt radicand)
  (sqrt-iter 1.0 radicand 0.0))

;;; .001 is significantly large when computing the square root of small numbers
;;; ex: sqrt .0001 is .01
;;; however, if the condition for good-enough is .001, we get an answer close to .03
;;; this is because .03 * .03 is .0009 which passes our condition of good-enough since
;;; our tolerance is fixed at .001

;;; In the case of large numbers with limited precision, the good-enough condition
;;; will never return #f causing infinite evaluation. For example, let's assume we have
;;; a large integer with a limited precision up to the hundreths place. Unless the subtraction
;;; results in a value of exactly zero, subtraction will never return a smaller number compared
;;; to the thousandths place.
