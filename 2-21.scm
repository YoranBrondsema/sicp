(define (cc amount kinds-of-coins)
  (define (no-more? l) (null? l))
  (define (except-first-denomination l) (cdr l))
  (define (first-denomination l) (car l))

  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? kinds-of-coins)) 0)
        (else (+ (cc (- amount (first-denomination kinds-of-coins))
                     kinds-of-coins)
                 (cc amount
                     (except-first-denomination kinds-of-coins))))))

(define us-coins (list 50 25 10 5 1))

(pp (cc 100 us-coins))
