(define (make-rat n d)
  (define (sign n d)
    (if (> (* n d) 0) 1 -1))

  (let* ((abs-n (abs n))
         (abs-d (abs d))
         (g (gcd abs-n abs-d)))
    (cons (* (sign n d) (/ abs-n g)) (/ abs-d g))))

(pp (make-rat 10 2))
(pp (make-rat -10 -2))
(pp (make-rat 10 -2))
(pp (make-rat -10 2))
