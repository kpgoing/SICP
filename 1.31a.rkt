#lang racket
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))
(define (f x) x)
(product f 1 (lambda (x) (+ x 1)) 4)
(define (factorial n)
  (product f 1 (lambda (x) (+ x 1)) n))
(factorial 10)