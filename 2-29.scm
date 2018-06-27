(define (equal? x y)
  (cond ((eq? x y) true)
        ((eq? (car x) (car y)) (equal? (cdr x) (cdr y)))
        (else false)))

(pp (equal? '(this is a list) '(this is a list)))
(pp (equal? '(this is a list) '(this (is a) list)))
