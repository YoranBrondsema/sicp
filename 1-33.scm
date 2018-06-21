(load "util.scm")
(load "1-32.scm")

(define (smooth f dx)
  (define (average x y z)
    (/ (+ x y z) 3))

  (lambda (x)
    (average (f (- x dx)) (f x) (f (+ x dx)))))

(define (n-fold-smooth f dx n)
  (repeated (smooth f dx) n))

(pp ((smooth square 0.01) 0))
(pp (repeated (smooth square 0.01) 5))
(pp ((n-fold-smooth square 0.01 5) 0))
