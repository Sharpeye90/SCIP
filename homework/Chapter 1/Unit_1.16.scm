(define (fast-expt b n)
    (iter-expt b n 1))


(define (iter-expt number counter product)
    (cond ((= counter 0) product)
          ((even? counter)(iter-expt (* number number) 
                                     (/ counter 2)
                                     product)))
          ((not (even? counter)) (if (= counter 1)
                                     (* number product)
                                     (iter-expt number
                                                (- counter 1)
                                                (* number product)))))

(define (even? x)
    (= (remainder x 2) 0))  