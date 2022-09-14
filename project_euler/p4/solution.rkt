#lang racket

#|
A palindromic number reads the same both ways. The 
largest palindrome made from the product of two 
2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product 
of two 3-digit numbers.
|#

(define (is-palindrome? n)		;Function definition
  (define (helper n acc)		;Helper function
    (if (> n 0)					;While input is above 0
        (helper (quotient n 10) (+ (remainder n 10) (* 10 acc))) ;Constructs a reverse number
        acc))					;If input is 0, then return our accumulated number
  (equal? n (helper n 0)))		;If they are equal then they are palindromic


(define (cartesian-product a b)		;Function Definition
  (reverse (foldl 					
            append '() 				;Construct a list
            (map (lambda (x) (reverse (map (lambda (y) (list x y)) b))) a))))

;Solution
(apply max											;Get the maximum
         (filter is-palindrome?						;Only on elements that are palindromic
                 (map (lambda (x) (apply * x))		;By multipliying a 2d array together
                      (cartesian-product (range 100 999) (range 100 999)))))

