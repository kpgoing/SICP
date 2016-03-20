#lang racket
(define (reverse items)
  (define (iter items ritems)
    (cond ((null? items) ritems)
          (else (iter (cdr items) (cons (car items) ritems)))))
  (iter items '()))
(reverse (list 1 2 3 4 5 6 7 8))
