(define (p) (p))
(define (test x y)
(if (= x 0) 0 y))

(test 0 (p))

Normal order: 
(test 0 (p))
(if (= 0 0) 0 p)
=> 0

Applicative order:
(test 0 (p))
(test 0 (p))
(test 0 (p))
=> never terminates

In normal order the operator test gets expanded first, until only primitive procedures calls remain (or in this case if). 
For applicative order, the arguments get evaluated first and then applied. Since p cannot get expanded further, it will never stop.
