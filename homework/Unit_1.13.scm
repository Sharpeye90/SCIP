(define (fib n)
    (fib-iter 1 0 n))

(define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))    

(define (fau) (/ (+ 1 (sqrt 5)) 2) )
(define (feu) (/ (- 1 (sqrt 5)) 2) )
(define (dF n)
    (/ (expt (fau) n) (sqrt 5)))

(define (check x)
    (< (- (+ (df (- x 1))(df (- x 2)) (fib x))) 0.001))

(define (fib2 n)
    (< (- (fib n) (/ (- (expt (fau) n) (expt (feu) n)) (sqrt 5))) 0.0001))
