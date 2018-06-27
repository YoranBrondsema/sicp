; interval 1: [a - 0.5*p_1*a, a + 0.5*p_1*a]
; interval 2: [b - 0.5*p_2*b, b + 0.5*p_2*b]

; lower bound: ab - 0.5*p_1*ab - 0.5*p_2*ab + 0.25*p_1*p_2*ab
; Since p_1 and p_2 are small, the term p_1*p_2 is small too. So that makes
; lower bound: ab(1 - 0.5*(p_1 + p_2))

; The higher bound is similar:
; higher bound: ab(1 + 0.5*(p_1 + p_2))

; So the tolerance becomes:
; higher bound - lower bound ~ p_1 + p_2
