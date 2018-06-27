(define (even? n) (= (remainder n 2) 0))

(define (always-true n) true)
(define (always-false n) false)
(define 1-through-4 (list 1 2 3 4))

(define (identity n) n)
(define (square n) (* n n))
(define (cube n) (* n n n))
(define (average x y)
  (/ (+ x y) 2))

; true iff |a-b| < eps
(define (within a b eps) (<= (abs (- a b)) eps))

; from https://stackoverflow.com/a/16945945/1269194
(define (atom? x)
  (and (not (null? x))
       (not (pair? x))))
