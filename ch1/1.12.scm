; Pascal's triangle
(define (pascal n)
  (define (compute-pascal j k)
      (cond ((= k j) 1) 
            ((or (= j 0) (= k 0)) 0) 
            (else (+ (compute-pascal (- j 1) (- k 1))
                     (compute-pascal (- j 1) k)))))
  (define (row-iter row column)
      (if (<= row n)
        (if (<= column row)
          (begin 
            (display (list (compute-pascal row column)))
            (row-iter row (+ column 1)))
          (begin
            (newline)
           (row-iter (+ row 1) 1)))
        '())) 
  (row-iter 1 1))

(pascal 9)

