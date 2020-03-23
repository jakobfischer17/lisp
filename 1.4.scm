(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

=> The procedure will calculate a + b if b is greater than 0. Otherwise it will calculate a - b. A and b are operands whose arguments are expected to be numbers.
