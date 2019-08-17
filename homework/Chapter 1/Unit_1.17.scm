(define (* a b)
    (cond ((= b 0) 0)
          ((even? b) (double (* a (half b))))
          (else (+ a (* a (- b 1))))))

(define (half x)
    (/ x 2))

(define (double x)
    (+ x x))