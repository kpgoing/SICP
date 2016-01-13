#lang racket
(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (cheng a b)
  (if (= b 0)
      0
      (+ a (cheng a (- b 1)))))
(define (even? n)
  (= (remainder n 2) 0))
(define (cheng2 a b)
  (cond ((= b 0) 0)
        ((even? b) (double (cheng2 a (halve b))))
        (else (+ a (cheng2 a (- b 1))))))
(cheng2 1000 9999)
      
      