#lang racket
#|
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
|#

(define (solve a b)

	; because b is the inner loop, increment a
	(if (> b 500)
		(solve (+ a 1) 1)

		; Compute c
		(let ([c (sqrt (+ (expt a 2) (expt b 2)))])

			; If their sum is greater than 1000, then just increment b
			(if (and 
					(= (expt c 2) 
					   (+ (expt b 2) (expt a 2))) 
					(= (apply + (list a b c)) 1000))

				;If the above is the case, we have an answer
				(apply * (list c;a b c))

				; Otherwise, continue recursion
				(solve a (+ b 1))))))

(solve 1 1)