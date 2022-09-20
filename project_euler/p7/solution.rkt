#lang racket

#|
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10001st prime number?
|#

(define (is-prime num div)
	
	(if (= div 1)
		#t

		(if (= (modulo num div) 0)
			#f

			(is-prime num (- div 1)))))

(define (prime-helper num)
	(is-prime num (floor (sqrt num))))

(define (solve num limit)
	
	;If it is prime
	(if (prime-helper num)
		
		;If we have reached the target prime
		(if (= limit 10001)
			;Return the prime
			num
			;Else recurse up
			(solve (+ num 1) (+ limit 1)))

		;If it is not prime, recurse up with num but not limit
		(solve (+ num 1) limit)))

(display (solve 2 1)) (display "\n")