#lang racket
(define (same-parity first . nums)
  (define (evens-or-odds f items)
    (if (null? items)
        items
        (if (f (car items))
            (cons (car items) (evens-or-odds f (cdr items)))
            (evens-or-odds f (cdr items) ))))
  (cons first (if (even? first)
                  (evens-or-odds even? nums )
                  (evens-or-odds odd? nums ))))
  (same-parity 1 2 3 4 5 6 7 8 9)
;注意递归思想，若用迭代则需要反序