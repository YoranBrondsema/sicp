(load "util.scm")

(define (fringe x)
  (cond ((null? x) ())
        ((atom? x) (list x))
        (else (append (fringe (car x)) (fringe (cdr x))))))

(define x (cons (list 1 2) (list 3 4)))
(pp (fringe x))
(pp (fringe (list x x)))
