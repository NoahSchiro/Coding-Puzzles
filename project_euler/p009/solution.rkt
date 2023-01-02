#lang racket
#|
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
|#

(define result 0)

(for* ((a (range 1 333))
       (b (range a (/ (- 1000 a) 2))))
  (let ((c (- 1000 a b)))
    (when (= (+ (* a a) (* b b)) (* c c))
        (set! result (* a b c)))))

(display result)
(display "\n")