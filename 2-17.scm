(define (append x y)
  (if (null? x)
    y
    (cons (car x) (append (cdr x) y))))

(define (reverse l)
  (if (null? l)
    ()
    (append (reverse (cdr l)) (list (car l)))))

(pp (reverse (list 1 2 4 9 16 25)))
