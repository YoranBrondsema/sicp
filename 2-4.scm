(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (get-exp n divider cur)
  (if (= (remainder n divider) 0)
    (get-exp (/ n divider) divider (+ 1 cur))
    cur))

(define (car pair) (get-exp pair 2 0))
(define (cdr pair) (get-exp pair 3 0))

(pp (car (cons 3 5)))
(pp (cdr (cons 3 5)))
