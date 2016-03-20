#lang racket
;;这个问题就是我在2.20曾遭遇的问题，第一种其实核心就是reverse，第二种则不再是list的组合方式，而是嵌套的cons.
(define (square-list items)
    (define (iter things answer)
        (if (null? things)
            (reverse answer) 
            (iter (cdr things)  
                  (cons (square (car things))
                        answer))))
    (iter items '()))