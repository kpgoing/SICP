#lang racket
(define (cont-frac n d k)
  (define (f q)
    (if (= q k)
        (/ (n q) (d k))
        (/ (n q) (+ (d q) (f (+ q 1))))))
  (f 1))
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           11)
(define (cont-frac2 n d k)
  (define (iter i result)
    (if (= i 0)
        result
        (iter (- i 1)
              (/ (n i)
                 (+ (d i) result)))))
  (iter (- k 1)
        (/ (n k) (d k))))
(cont-frac2 (lambda (i) 1.0)
           (lambda (i) 1.0)
           11)

  