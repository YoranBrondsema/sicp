(load "util.scm")

(define (repeated f n)
  (define (iter f i n x)
    (if (> i n)
      x
      (iter f (+ i 1) n (f x))))

  (lambda (x)
    (iter f 1 n x)))

; (pp ((repeated square 2) 5))
