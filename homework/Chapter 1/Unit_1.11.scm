(define (f n)
    (if (< n 3)
        n
        (+ (f (- n 1)) (f (- n 2)) (f (- n 3)))))


(f 5)

(+ (f 4) (f 3) (f 2))
(+ (+ (f 3) (f 2) (f 1)) (+ (f 2) (f 1) (f 0)))
(+ (+ (+ (f 2) (f 1) (f 0)) (f 2) (f 1)) (+ 2 1 0))
(+ (+ (+ 2 1 0) 2 1) 3)
(+ (+ 3 2 1) 3)
(+ 6 3)
(9)


(define (f n)
    (define (iter a b c count)
        (if (= count 0)
            c
            (iter (+ a b c) a b (- count 1) )))
    (iter 2 1 0 n))

 (f 5)

 (iter 2 1 0 5)
 (iter 3 2 1 4)   
 (iter 6 3 2 3)
 (iter 9 6 3 2)
 (iter 15 9 6 1)
 (iter 24 15 9 0)
 (9)
