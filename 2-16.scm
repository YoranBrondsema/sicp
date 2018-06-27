(define (last l)
  (let ((tail (cdr l)))
    (if (null? tail)
      (car l)
      (last tail))))

(pp (last (list 1 4 9 16 25)))
