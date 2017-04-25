(define (exp-iter b n a)
  (cond ( (= n 0) a)
        ((even? n) (exp-iter (square b) (/ n 2) a))
        (else (exp-iter b (- n 1) (* a b)))))


(define (fast-exp b n)
  (exp-iter b n 1))

;; (fast-exp 5 5)
