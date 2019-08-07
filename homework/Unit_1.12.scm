(define (pascal row elem)
     (if (or (= elem 1)
             (= row 1)
             (= row 2)
             (= row elem))
        1
        (+ (pascal (- row 1) (- elem 1))
           (pascal (- row 1) elem))))

(pascal 5 3)

(+ (pascal 4 2) (pascal 4 3))

(+ (+ (pascal 3 1) (pascal 3 2)) (+ (pascal 3 2) (pascal 3 3)))

(+ (+ 1 (+ (pascal 2 1) (pascal 2 2)) (+ (+ (pascal 2 1) (pascal 2 2)) 1)))

(+ (+ 1 (+ 1 1)) (+ (+ 1 1) 1))

(+ (+ 1 2) (+ 2 1))

(+ 3 3)

(6)