(define (sqrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (sqrt-iter (improve guess x) guess x)))


(define (improve guess x)
  (average guess (/ x guess)))


(define (average x y)
         (/ (+ x y) 2))


(define (good-enough? guess previous-guess)
  (< (abs (- guess previous-guess))0.001))


(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 0 x))


(square (sqrt 0.001))
