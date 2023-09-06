(define (reverse lst)
(if (null? lst) nil
    (if (= (length lst) 1) lst
        (append (reverse (cdr lst)) (list (car lst)))
    )
)
)

