#lang racket
(define (last-pair items)
  (cond ((null? items) (error "list empty"))
        ((null? (cdr items)) items)
        (else (last-pair (cdr items)))))
(define Alist (list 1 2 3 4 5 6 7 8 9 10))
Alist
(last-pair Alist)
