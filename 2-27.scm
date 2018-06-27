(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))

(define (weight? structure)
  (number? structure))

(define (branch-weight branch)
  (let ((structure (branch-structure branch)))
    (if (weight? structure)
      structure
      (total-weight structure))))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile)) (branch-weight (right-branch mobile))))

(define x
  (make-mobile
    (make-branch 4 (make-mobile (make-branch 1 7) (make-branch 1 3)))
    (make-branch 1 2)))
(pp (total-weight x))

; (d): we would only have to modify the selectors.
