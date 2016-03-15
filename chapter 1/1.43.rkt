#lang racket
;Recursion
(define (compose f g)
  (lambda (x) (f (g x))))
(define (repeated1 f n)
    (if (= n 1)
        f
        (compose f
                 (repeated1 f (- n 1)))))
((repeated1 (lambda (x) (* x 9)) 10) 1)
;Iteration
(define (repeated2 f n)
    (define (iter i repeated-f)
        (if (= i 1)
            repeated-f
            (iter (- i 1)
                  (compose f repeated-f))))
    (iter n f))
