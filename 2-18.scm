(load "util.scm")

(define (square-list x)
  (if (null? x)
    ()
    (cons (square (car x))
          (square-list (cdr x)))))

(pp (square-list (list 1 2 3 4 5 6)))
