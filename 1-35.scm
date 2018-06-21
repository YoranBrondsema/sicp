(load "util.scm")

(define (iterative-improve good-enough? improve)
  (define (iter guess)
    (if (good-enough? guess) guess (iter (improve guess))))

  iter)

(define (fixed-point f)
  (iterative-improve
    (lambda (guess) (within guess (f guess) 0.001))
    (lambda (guess) (f guess))))

(pp ((fixed-point cos) 1))
