#lang racket
(define a '(1 3 (5 7) 9))
(car (cdr (car (cdr (cdr a)))))
(car (car (list (list 7))))
 (define b (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))
 b
(cadadr (cadadr (cadadr b)))
(car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr b))))))))))))
