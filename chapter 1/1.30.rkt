#lang racket
(define (sum2 term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))
(define (cube x) (* x x x))
(sum2 cube 1 (lambda (x) (+ x 1)) 3)