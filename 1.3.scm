(define (largestsum x y z)
  (cond (and (> x y) (> x z) (> y z) (+(* x x) (* y y)))
        (and (> y z) (> y x) (> z x) (+(* y y) (* z z)))
        (and (> x y) (> x z) (> z y) (+(* x x) (* z z)))
  ))

or

(define (square x) (* x x))
(define (sqsumlargest x y z)
(cond ((and  (> x y) (> z y)) (+ (square x) (square z)))
      ((and  (> x z) (> y z)) (+ (square x) (square y)))
      ((and  (> y x) (> z x)) (+ (square z) (square y)))))
