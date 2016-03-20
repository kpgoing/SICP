#lang racket
(define (for-each f list)
  (if (null? list)
      (newline)
      (and (f (car list))
       (for-each f (cdr list)))))
(for-each (lambda (x) (newline) (display x)) (list 1 2 3))