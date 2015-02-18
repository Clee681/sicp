; exercise 1.3

(define (sum-squares-of-largest-2 a b c)
  (cond ((and (<= a b) (<= a c)) (+ (* b b) (* c c)))
	((and (<= b a) (<= b c)) (+ (* a a) (* c c)))
	(else (+ (* a a) (* b b)))))

; tests

(sum-squares-of-largest-2 1 2 3) ; Value: 13
(sum-squares-of-largest-2 5 4 2) ; Value: 41
(sum-squares-of-largest-2 4 4 4) ; Value: 32
(sum-squares-of-largest-2 5 4 4) ; Value: 41
