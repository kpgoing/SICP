#lang racket
(define (reverse items)
  (define (iter items ritems)
    (cond ((null? items) ritems)
          (else (iter (cdr items) (cons (car items) ritems)))))
  (iter items '()))
(reverse (list 1 2 3 4 5 6 7 8))
(reverse '(1))
(define (deep-reverse items)
    (cond ((null? items)
           '())
          ((not (pair? items))
           items)
          (else
           (reverse
           (list (deep-reverse (car items))
                 (deep-reverse (cadr items)))))))
(deep-reverse '((1 2) (3 4)))