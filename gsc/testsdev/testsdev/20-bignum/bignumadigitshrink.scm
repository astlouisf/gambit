
;;
;; (##bignum.adigit-shrink! bignum1 i bignum2 j)
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define c (##bignum.make 3 (##fixnum->bignum 1543) #f))

(define q (##fxquotient (##bignum.mdigit-length a) 3))

(define (test x i)
  (println (##fxquotient (##bignum.mdigit-length x) q))
  (println (##bignum.mdigit-ref x (##fx- i 1)))
  (##bignum.adigit-shrink! x i)
  (println (##bignum.mdigit-ref x (##fx- i 1)))
  (println (##fxquotient (##bignum.mdigit-length x) q)))

(test a 3)
(test a 2)
(test a 1)
(test c 3)
(test c 2)
(test c 1)
