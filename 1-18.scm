(define (smallest-divisor n)
  (define (even n) (= (remainder n 2) 0))
  (define (next n)
    (cond ((even? n) (+ 1 n))
          (else (+ 2 n))))

  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))

  (define (divides? a b)
    (= (remainder b a) 0))

  (define (square x) (* x x))

  (find-divisor n 2))

(define (timed-prime? n)
  (define start-time (runtime))
  (define elapsed-time (- (runtime) start-time))

  (cond ((prime? n)
         (display n)
         (newline)
         true
         )
        (else false)))

(define (search-for-primes lower count)
  (define (find-prime cur cur-count count)
    (cond ((< cur-count count)
           (cond ((timed-prime? cur)
                  (find-prime (+ cur 1) (+ cur-count 1) count))
                 (else (find-prime (+ cur 1) cur-count count))))
          (else (display (runtime)))))

  (find-prime lower 0 count))

(define (prime? n)
  (= n (smallest-divisor n)))

(search-for-primes 1000000000000 3)
