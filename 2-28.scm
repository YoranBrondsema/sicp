(load "util.scm")

(define (memq item x)
  (cond ((null? x) '())
        ((eq? item (car x)) x)
        (else (memq item (cdr x)))))

(pp (list 'a 'b 'c))
; (a b c)

(pp (list (list 'george)))
; ((george))

(pp (cdr '((x1 x2) (y1 y2))))
; ((y1 y2))

(pp (cadr '((x1 x2) (y1 y2))))
; (y1 y2)

(pp (atom? (car '(a short list))))
; #f

(pp (memq 'red '((red shoes) (blue socks))))
; ()

(pp (memq 'red '(red shoes blue socks)))
; (red shoes blue socks)
