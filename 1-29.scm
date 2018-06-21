(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner a result))))
  (iter a null-value))

(define (max f a b n)
  (accumulate
    (lambda (x maximum)
      (if (> (f x) (f maximum)) x maximum))
    a
    f
    a
    (lambda (cur) (+ cur (/ (- b a) n)))
    b))

(pp (* 2 (max sin 0 3 1000)))
