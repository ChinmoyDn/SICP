(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))


(define (mul-iter a b p)
  (cond ((= b 0) p)
        ((even? b)
         (mul-iter (double a) (halve b) p))
        (else 
          (mul-iter a (- b 1) (+ a p)))))

(define (mul a b)
  (mul-iter a b 0))

