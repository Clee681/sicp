; exercise 1.3

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-squares-of-largest-2 a b c)
  (cond ((and (<= a b) (<= a c)) (sum-of-squares b c))
	((and (<= b a) (<= b c)) (sum-of-squares a c))
	(else (sum-of-squares a b))))

; tests

(sum-squares-of-largest-2 1 2 3) ; Value: 13
(sum-squares-of-largest-2 5 4 2) ; Value: 41
(sum-squares-of-largest-2 4 4 4) ; Value: 32
(sum-squares-of-largest-2 5 4 4) ; Value: 41
