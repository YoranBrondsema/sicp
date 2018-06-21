(load "util.scm")

; product
(define (product-rec term a next b)
  (if (> a b)
    1
    (* (term a)
       (product-rec term (next a) next b))))

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* (term a) result))))

  (iter a 1))

; factorial
(define (factorial-term i) i)

(define (factorial-rec n)
  (product-rec factorial-term 1 1+ n))

(define (factorial-iter n)
  (product-iter factorial-term 1 1+ n))

; pi
(define (pi-approx n)
  (define (pi-approx-top-term i)
    (if (even? i) (+ i 2) (+ i 1)))
  (define (pi-approx-bottom-term i)
    (if (even? i) (+ i 1) (+ i 2)))

  (*
    4.0
    (/
      (product-iter pi-approx-top-term 1 1+ n)
      (product-iter pi-approx-bottom-term 1 1+ n)
    )
  ))

(pp (factorial-rec 5))
(pp (factorial-iter 5))
(pp (pi-approx 1000))
