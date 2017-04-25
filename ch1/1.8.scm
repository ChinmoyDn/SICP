(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (cube-root x)
  (cube-root-iter 1.0 0 x))

(define (cube-root-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
    guess
    (cube-root-iter (improve-guess guess x) guess x)))

(define (improve-guess guess x)
  (/ (+ (/ x (cube y)) (* 2 guess)) 3))

(define (good-enough? guess previous-guess)
  (< (abs (- guess previous-guess))))

(cube-root 27)