(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

;
;(gcd 206 40)        
;(gcd 40 (remainder 206 40)) 40 6
;(gcd (remainder 206 40) (remainder 40 (remainider 206 40))) 6 4
;(gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 4 2



;(gcd 40 6)

;(gcd 6 4)

;(gcd 4 2)

;(gcd 2 0)

;12 vs 4



