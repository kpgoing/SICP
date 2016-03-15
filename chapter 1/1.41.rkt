#lang racket
(define (double f)
  (lambda (x) (f (f x))))
(define (addf x)
  (+ x 1))
((double addf) 0)
(((double (double double)) addf) 0)