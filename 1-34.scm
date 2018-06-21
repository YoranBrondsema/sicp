(load "util.scm")

(define (cubic a b c)
  (lambda (x)
    (+ (cube x) (* a (square x)) (* b x) c)))

(pp ((cubic 1 2 3) 5))
