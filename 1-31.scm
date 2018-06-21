(define (fixed-point f x)
  (let ((fx (f x)))
    (if (< (abs (- fx x)) 0.001)
      x
      (fixed-point f fx))))

(pp (fixed-point cos 1))
