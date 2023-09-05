(define (split-at lst n)
	(define (helper1 lst n firstn)
		(if (= n 0) firstn
			(helper1 (cdr lst) (- n 1) (append firstn (list (car lst))))
		)
	)
	(define (helper2 lst n) 
		(if (= n 0) lst
			(helper2 (cdr lst) (- n 1))
		)
	)
	(if (> n (length lst)) (cons lst nil)
		(cons (helper1 lst n nil) (helper2 lst n))
	)
)


(define-macro (switch expr cases)
	(cons `cond
		(map (lambda (case) (cons (eq? (car case) (eval expr)) (cdr case)))
    			cases))
)

