
;;
;; (##bignum.mdigit-not! bignum i)
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##bignum.make 3 #f #t))

;; a
(println (##bignum.mdigit-ref a 0))
(##bignum.adigit-bitwise-not! a 0)
(println (##fx= (##bignum.mdigit-ref b 0) (##bignum.mdigit-ref a 0)))

;; b
(println (##bignum.mdigit-ref (##bignum.adigit-bitwise-not! b 0) 0))
(println (##bignum.mdigit-ref b 0))

