(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k) (f (+ a (* k h))))
  (define (even? n) (= (remainder n 2) 0))

  (define (simpson-sum k acc)
    (cond ((> k n) acc)
          ((= k 0) (+ (simpson-sum (+ k 1) acc) (y 0)))
          ((even? k) (+ (simpson-sum (+ k 1) acc) (* 2 (y k))))
          (else (+ (simpson-sum (+ k 1) acc) (* 4 (y k))))))


  (* (/ h 3) (simpson-sum 0 0)))

(define (cube x) (* x x x))
(define (square x) (* x x))
(pp (simpson cube 0.0 1.0 10000))
(pp (simpson square 0.0 1.0 10000))
