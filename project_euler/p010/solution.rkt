#lang racket
#|
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
|#

(define (is-prime num)
	(define (helper num div)
		(if (= div 1)
			#t
			(if (= (modulo num div) 0)
				#f
				(helper num (- div 1)))))

	(helper num (floor (sqrt num))))

(define (prime-in-range index limit)

	; Base case is we reach limit
	(cond ((>= index limit)
			'())

		  ; The interesting case is that we reach a prime, in which case we construct a list
		  ((is-prime index)
		  	(cons index 
		  		  (prime-in-range (+ index 1) limit)))
		  
		  ; If we don't see a prime, just return the list of the next thing
		  (else
		  	(prime-in-range (+ index 1) limit))))

; This really is a terrible solution by the way. Might even cause stack overflow
(display (apply + (prime-in-range 2 2000000))) (display "\n")