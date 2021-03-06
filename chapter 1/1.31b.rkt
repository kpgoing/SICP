#lang racket
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))
(product (lambda (x) x) 1 (lambda (x) (+ x 1)) 10)