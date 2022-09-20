#lang racket

#|
The sum of the squares of the first 
ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first 
ten natural numbers is,

(1 + 2 + ... + 10)^2 = 3025

Hence the difference between the 
sum of the squares of the first 
ten natural numbers and the square 
of the sum is,

3025 - 385 = 2460

Find the difference between the sum 
of the squares of the first one 
hundred natural numbers and the 
square of the sum.
|#

(define (sum-of-square limit)

	; Sum up a list which is the square of numbers [1, limit]
	(apply + (map 
				(lambda (x) (expt x 2))
				(range 1 (+ limit 1)))))

(define (square-of-sum limit)

	(expt 
		(apply + (range 1 (+ limit 1))) 
		2))

(display (- 
			(square-of-sum 100) 
			(sum-of-square 100))) 
(display "\n")