#lang racket
(define (make-point x y)
  (cons x y))
(define (x-point p)
  (car p))
(define (y-point p)
  (cdr p))
(define (make-segment start end)
  (cons start end))
(define (start-segment segment)
  (car segment))
(define (end-segment segment)
  (cdr segment))
(define (average x y)
  (/ (+ x y) 2))
(define (f-average f x y)
  (/ (+ (f x) (f y)) 2))
(define (midpoint-segment segment)
  (let ((sp (start-segment segment))
       (ep (end-segment segment)))
    (make-point (f-average start-segment sp ep) (f-average end-segment sp ep))))
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
(define x (make-point 3 2))
(define y (make-point -2 -2))
(define l (make-segment x y))
(print-point (midpoint-segment l))