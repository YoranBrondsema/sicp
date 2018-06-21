(define (f g) (g 2))
(f f)

; Will result in an error.
;
; The first invocation will expand (f f) into (f 2)
; (f f)
; (f 2)
;
; The second invocation will evaluate "2" as a function on itself.
; (f 2)
; (2 2)
;
; This results in an "The object 2 is not applicable." error.
