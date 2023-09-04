(define (rle s)
    (define (helper x s num)
        (if (and (not (null? s)) (= x (car s))) (helper x (cdr-stream s) (+ num 1))
            (list x num)
        )
    )    
    (define (next x s)
        (if (and (not (null? s)) (= x (car s))) (next x (cdr-stream s))
            s
        )
    )
    (if (null? s) nil
    (cons-stream (helper (car s) s 0) (rle (next (car s) s)))
    )
)




(define (group-by-nondecreasing s)
    (define (helper x s ans)
        (if (and (not (null? s)) (<= x (car s))) (helper (car s) (cdr-stream s) (append ans (list (car s))))
            ans
        )
    )
    (define (next x s)
        (if (and (not (null? s)) (<= x (car s))) (next (car s) (cdr-stream s))
            s
        )
    )
    (if (null? s) nil
        (cons-stream (helper (car s) s nil) (group-by-nondecreasing (next (car s) s)))
    )
)


(define finite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 3
                (cons-stream 1
                    (cons-stream 2
                        (cons-stream 2
                            (cons-stream 1 nil))))))))

(define infinite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 2
                infinite-test-stream))))

