(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

; Proof that (car (cons x y)) yields x
; (car (cons x y))
; => (car (lambda (m) (m x y)))
; => ((lambda (m) (m x y)) (lambda (p q) p))
; => ((lambda (p q) p) x y)
; => x


(define (cdr z)
  (z (lambda (p q) q)))

; Proof
; (cdr (cons x y))
; => (cdr (lambda (m) (m x y)))
; => ((lambda (m) (m x y)) (lambda (p q) q))
; => ((lambda (p q) q) x y)
; => y

(pp (cdr (cons 1 5)))
