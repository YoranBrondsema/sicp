(define x (list 1 2 3))
(define y (list 4 5 6))

; (append x y)
; (1 2 3 4 5 6)
(pp (append x y))

; (cons x y)
; ((1 2 3) 4 5 6)
(pp (cons x y))

; (list x y)
; ((1 2 3) (4 5 6))
(pp (list x y))
