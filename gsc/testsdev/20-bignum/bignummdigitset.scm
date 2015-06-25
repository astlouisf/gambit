

;;
;; (##bignum.mdigit-ref bignum i)
;; Returns the value of the component at index i of the bignum.
;;


(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##bignum.make 3 #f #t))
(define c (##bignum.make 3 (##fixnum->bignum 1543) #t))

(define (swap x i y j)
  (let ((xv (##bignum.mdigit-ref x i))
        (yv (##bignum.mdigit-ref y j)))
    (##bignum.mdigit-set! x i yv)
    (##bignum.mdigit-set! y j xv)          
    (println (if (##fx= yv (##bignum.mdigit-ref x i))
                 "same"
                 "not same"))          
    (println (if (##fx= xv (##bignum.mdigit-ref y i))
                 "same"
                 "not same"))))

(swap a 0 c 1)
(swap a 1 b 2)
(swap a 2 c 0)


