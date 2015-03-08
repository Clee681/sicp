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
  (if (= previous-guess 0.0)
      (sqrt-iter (improve guess x)
		 x
		 guess))
  
  (if (good-enough? previous-guess guess)
      guess
      (sqrt-iter (improve guess x)
                 x
		 guess)))

(define (sqrt x)
  (sqrt-iter 1.0 x 0.0))
