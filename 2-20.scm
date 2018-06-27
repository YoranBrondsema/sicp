(load "util.scm")

(define (mapcar f l)
  (if (null? l)
    ()
    (cons (f (car l)) (mapcar f (cdr l)))))

(pp (mapcar square 1-through-4))
