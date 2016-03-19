#lang racket
(define (new-cons x y)
  (lambda (m) (m x y)))
(define (new-car z)
  (z (lambda (p q) p)))
(define (new-cdr z)
  (z (lambda (p q) q)))
(define a (new-cons 1 2))
(new-cdr a)
;;序对的过程性表示，实在是好玩！