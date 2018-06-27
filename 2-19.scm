(define (square-list x)
  (define (iter l answer)
    (if (null? l)
      answer
      (iter (cdr l)
            (cons (square (car l))
                  answer))))

  (iter x ()))

(pp (square-list (list 1 2 3 4 5 6)))
; (36 25 16 9 4 1)

; The problem is that the newer elements are prepended to the list, resulting
; the reverse order.

(define (square-list x)
  (define (iter l answer)
    (if (null? l)
      answer
      (iter (cdr l)
            (cons answer
                  (square (car l))))))

  (iter x ()))

(pp (square-list (list 1 2 3 4 5 6)))

; Instead of elements, lists are prepended.
