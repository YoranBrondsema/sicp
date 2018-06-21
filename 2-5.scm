; one
(define one (1+ zero))
=> (1+ zero)
=> (1+ (lambda (f) (lambda (x) x)))
=> (lambda (f) (lambda (x) (f ((zero f) x))))
=> (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x)) f) x))))
=> (lambda (f) (lambda (x) (f ((lambda (x) x) x))))
=> (lambda (f) (lambda (x) (f x)))

; two
(define two (1+ one))
=> (1+ one)
=> (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) (f x))) f) x))))
=> (lambda (f) (lambda (x) (f ((lambda (x) (f x)) x))))
=> (lambda (f) (lambda (x) (f (f x))))
