#lang racket
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n 