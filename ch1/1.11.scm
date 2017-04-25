(define (fn n)
  (cond ((< n 3) n)
        (else 
          (+ (fn (- n 1))
             (* 2 (fn (- n 2)))
             (* 3 (fn (- n 3)))))))

;(fn 4)
;(fn 5)
;(fn 6)

(define (fn-iter n)
  (define (compute-fn fn-1 fn-2 fn-3 counter) 
      (if (>= counter n)
        (if (< counter 3)
          counter 
          (+ fn-1
             (* 2 fn-2)
             (* 3 fn-3)))
        (compute-fn (+ fn-1
                       (* 2 fn-2)
                       (* 3 fn-3))
                    fn-1
                    fn-2
                    (+ 1 counter)))) 
  (compute-fn 2 1 0 3))

;(fn-iter 4)
;(fn-iter 5)

