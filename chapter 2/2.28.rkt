#lang racket
(define (fringe items)
  (define (iter item1 item2)
  (cond ((null? item1) '())
        ((not (pair? item1)) (list item1))
        (else (iter (car item1) item2)
              (iter (cadr item1) item2))))
  (iter items '()))
(fringe '(1 2 3))
  