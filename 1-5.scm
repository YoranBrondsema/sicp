(define (sqrt x) (sqrt-iter 1 0 x))

(define (sqrt-iter guess prev-guess x)
        (if (good-enough? guess prev-guess x)
            guess
            (sqrt-iter (improve guess x) guess x)))

(define (good-enough? guess prev-guess x)
  (< (/ (abs (- guess prev-guess)) guess) .001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (abs x)
  (if (< x 0) (- x) x))

(define (square x) (* x x))
