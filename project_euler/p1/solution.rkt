#lang racket

#|
If we list all the natural numbers below 10 that are multiples 
of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
|#


; Solve for up to n
(define (solve n)
	; Generally want to sum some list
	(apply + 

		; Filter this list on the boolean eval of the following lambda
		(filter 
			(lambda (i) 
					(or (= (modulo i 3) 0) 
						(= (modulo i 5) 0)
					)
			)
			; list range (input)
			(range 1 n)
		)
	)
)

; Case we need to solve
(display (solve 1000))
(display "\n")