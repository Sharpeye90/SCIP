(define (* a b)
    (mult-iter a b 0))

(define (mult-iter number counter product)
    (cond ((= counter 0) product)
          ((even? counter) (mult-iter (double number)
                                      (half counter)
                                      product))
          (else (if (= counter 1)
                    (+ number product)
                    (mult-iter number 
                               (- counter 1)
                               (+ number product))))))


(define (half x)
    (/ x 2))

(define (double x)
    (+ x x))