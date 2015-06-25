

;;
;; (##bignum.mdigit-ref bignum i)
;; Returns the value of the component at index i of the bignum.
;;


(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##bignum.make 3 #f #t))
;(define c 123456789012345678901234567890)

(println (##bignum.mdigit-ref a 0)) ;0
(println (##bignum.mdigit-ref a 1)) ;0
(println (##bignum.mdigit-ref a 2)) ;0

(println (##fx= 0 (##bignum.mdigit-ref b 0))) ;; #f
(println (##fx= (##bignum.mdigit-ref b 0) (##bignum.mdigit-ref b 1))) ;; #t
(println (##fx= (##bignum.mdigit-ref b 0) (##bignum.mdigit-ref b 2))) ;; #t



