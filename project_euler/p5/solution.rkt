#lang racket

#|
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
|#

;Can a number be divided by every number less than n
(define (div input-num divisor)
	
		  ;Base case
	(cond [(<= divisor 1) 
				#t]

		  ;If it is divisible by input number, then move on to the next number
		  [(= (modulo input-num divisor) 0) 
		  		(div input-num (- divisor 1))]
		  
		  ;In all other cases, it will be false
		  [else #f]))

(define (solve input-num)

	(if (div input-num 20)
		input-num
		(solve (+ input-num 1))))

(display (solve 1)) (display "\n")