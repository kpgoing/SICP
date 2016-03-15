#lang racket
(define (filtered-accumulate combiner filter null-value term a next b)
  (cond ((> a b) null-value)
        ((filter a) (combiner (term a) (filtered-accumulate combiner filter null-value term (next a) next b)))
        (else (filtered-accumulate combiner filter null-value term (next a) next b))))
(define (f x) (> x 0))

(define (square x) (* x x))
(define (divides? a b)
    (= (remainder b a) 0))
(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n)
            n)
          ((divides? test-divisor n)
            test-divisor)
          (else
            (find-divisor n (+ test-divisor 1)))))
(define (smallest-divisor n)
    (find-divisor n 2))
(define (prime? n)
  (= n (smallest-divisor n)))
(filtered-accumulate (lambda (x y) (+ x y)) prime? 0 (lambda (x) x) 1 (lambda (x) (+ 1 x)) 1000000)
      