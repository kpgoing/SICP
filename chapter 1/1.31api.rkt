#lang racket
(define (product term a next b)
  (if (< (abs (- a b)) 0.000001)
      1
      (* (term a)
         (product term (next a) next b))))
(define (f x) x)
(define (dao x) (/ 1 x))
(define (nextpi x)
  (if (< x 1)
      (+ x (* 2 (- 1 x)))
      (dao (+ (dao x) (* 2 (- 1 (dao x)))))))
(* 4 (product f (/ 2 3.0) nextpi 1))