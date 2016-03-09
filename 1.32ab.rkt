#lang racket
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))
(define (accumulate2 combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (term a) result))))
    (iter a null-value))

(accumulate (lambda (x y) (* x y)) 1 (lambda (x) x)  1 (lambda (x) (+ x 1)) 10)
(accumulate (lambda (x y) (+ x y)) 0 (lambda (x) x)  1 (lambda (x) (+ x 1)) 3)
(accumulate2 (lambda (x y) (* x y)) 1 (lambda (x) x)  1 (lambda (x) (+ x 1)) 10)
(accumulate2 (lambda (x y) (+ x y)) 0 (lambda (x) x)  1 (lambda (x) (+ x 1)) 3)