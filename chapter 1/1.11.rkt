#lang racket
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))
(define (g n)
  (define (g-iter a b c count)
    (if (= count 2)
        a
        (g-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (if (< n 3)
      n
      (g-iter 2 1 0 n)))
;下面这个迭代版本的不需要额外的if判断处理n小于3的情况
(define (h n)
    (h-iter 2 1 0 0 n))

(define (h-iter a b c i n)
    (if (= i n)
        c
        (h-iter (+ a (* 2 b) (* 3 c))   ; new a
                a                       ; new b
                b                       ; new c
                (+ i 1)
                n)))
