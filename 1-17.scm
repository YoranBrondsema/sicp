(load "1-16.scm")

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
