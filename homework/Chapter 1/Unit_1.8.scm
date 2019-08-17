(define (cube x)
  (* x x x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))


(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (square guess))) 3))


(define (sqrt-int guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-int(improve guess x)
      	x)))

(define (sqrt x)
  (sqrt-int 1.0 x))
