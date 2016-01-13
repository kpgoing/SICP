#lang racket
(define (even? n)
  (= (remainder n 2) 0))
(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (cheng a b)
  (cheng-iter a b 0))
(define (cheng-iter a b n)
  (cond ((= b 0) n)
        ((even? b) (cheng-iter (double a) (halve b) n))
        (else (cheng-iter a (- b 1) (+ a n)))))
(cheng 19 10)
                  
      