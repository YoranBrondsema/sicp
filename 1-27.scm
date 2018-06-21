(load "util.scm")

(define (filtered-accumulate filter? combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter
        (next a)
        (if (filter? a) (combiner (term a) result) result))))
  (iter a null-value))

(pp (filtered-accumulate always-true + 0 square 1 1+ 4))
(pp (filtered-accumulate always-false + 0 square 1 1+ 4))
