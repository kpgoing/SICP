#lang racket
(define (cube-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (cube-iter (improve guess x) x)))
(define (good-enough? old-guess new-guess) 
  (> 0.01
     (/ (abs (- old-guess new-guess))
             old-guess)))
(define (improve y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))
(define (cube x)
  (cube-iter 1 x))
(cube 100)