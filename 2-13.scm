(load "2-6.scm")
(load "2-11.scm")

(define (intadd x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (intmul x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (intdiv x y)
  (intmul x
          (make-interval (/ 1 (upper-bound y))
                         (/ 1 (lower-bound y)))))

(define (par1 r1 r2)
  (intdiv (intmul r1 r2)
          (intadd r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (intdiv one
            (intadd (intdiv one r1)
                    (intdiv one r2)))))

(define perc 0.0000000001)
(define r1 (make-center-percent 10000 perc))
(define r2 (make-center-percent 100000 perc))

(pp (par1 r1 r1))
(pp (par1 r1 r2))

(pp (par2 r1 r1))
(pp (par2 r1 r2))
