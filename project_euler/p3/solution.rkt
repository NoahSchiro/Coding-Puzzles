#lang racket

#|
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
|#

; Input the number we want to divide and the number we are dividing by
(define (prime-factor num div)
	
	; Is num greater than 1
	(if (> num 1) 
		
		; If so then try to divide it
		(if (= (modulo num div) 0) 
			(prime-factor (/ num div) div) 	; make a recursive call with num being divided
			(prime-factor num (+ div 1)))	; make a recursive call but increment divisor
		
		; If not, then we return the divisor
		div))

; Call function with input
(prime-factor 600851475143 2)