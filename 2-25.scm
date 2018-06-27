(load "util.scm")

(define (deep-reverse l)
  (cond ((null? l) ())
        ((atom? l) (list l))
        (else (append (deep-reverse (cdr l)) (deep-reverse (car l))))))

(define x (cons (list 1 2) (list 3 4)))
(pp (deep-reverse x))
