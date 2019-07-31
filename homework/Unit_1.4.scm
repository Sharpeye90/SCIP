(define (a-plus-abs-b a b)
	((if (> b 0) + -) a b))

If b > 0 then takes + and it'll be like (+ a b) 
So on b < then takes - and it'll be like (- a b) 
	
	or (a + abs(b))
