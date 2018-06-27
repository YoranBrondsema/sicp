(load "2-6.scm")

(define (make-center-percent center percentage)
  (let ((width (* center (/ percentage 100))))
    (make-interval (- center width) (+ center width))))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(define (percent i)
  (* (/ (width i) (center i)) 100))
