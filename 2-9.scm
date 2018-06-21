(load "2-6.scm")

(define (intdiv x y)
  (if (= 0 (lower-bound y)) (error "The lower bound can't be 0"))
  (if (= 0 (upper-bound y)) (error "The upper bound can't be 0"))

  (intmul x
          (make-interval (/ 1 (upper-bound y))
                         (/ 1 (lower-bound y)))))

(pp (intdiv (make-interval 2 3)
            (make-interval 1 2)))
