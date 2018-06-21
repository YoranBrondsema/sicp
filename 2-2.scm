(load "util.scm")

(define (make-segment s e)
  (cons s e))

(define (start-point seg)
  (car seg))

(define (end-point seg)
  (cdr seg))

(define (make-point x y)
  (cons x y))

(define (x-coord point)
  (car point))

(define (y-coord point)
  (cdr point))

(define (midpoint seg)
  (define (point-average s e)
    (make-point (average (x-coord s) (x-coord e))
                (average (y-coord s) (y-coord e))))

  (point-average (start-point seg) (end-point seg)))

(pp (midpoint (make-segment (make-point 0 0) (make-point 2 2))))
