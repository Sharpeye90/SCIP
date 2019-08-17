(define (good-enough? guess x)
  (or (< (abs (- (square guess) x)) 0.001) (< (/ (prevguess guess x) guess) 1.001)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
		 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (prevguess y x)
   (- (* 2 y) (+ y (/ x y))))

(define (sqrt x)
  (sqrt-iter 1.0 x))

