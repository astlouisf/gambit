
;;
;; (##bignum.mdigit-and! bignum1 i bignum2 j)
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##bignum.make 3 #f #t))
(define c (##fixnum->bignum 1234))
(define d (##fixnum->bignum 100))

(println (##bignum.mdigit-ref c 0))
(println (##bignum.mdigit-ref (##bignum.adigit-bitwise-and! c 0 c 0) 0))
(println (##bignum.mdigit-ref c 0))

(println (##bignum.mdigit-ref c 0))
(println (##bignum.mdigit-ref (##bignum.adigit-bitwise-and! c 0 b 0) 0))
(println (##bignum.mdigit-ref c 0))

(println (##bignum.mdigit-ref c 0))
(println (##bignum.mdigit-ref (##bignum.adigit-bitwise-and! c 0 d 0) 0))
(println (##bignum.mdigit-ref c 0))

(println (##bignum.mdigit-ref a 0))
(##bignum.adigit-bitwise-and! a 0 b 0)
(println (##fx= 0 (##bignum.mdigit-ref a 0)))

(println (##bignum.mdigit-ref d 0))
(println (##bignum.mdigit-ref (##bignum.adigit-bitwise-and! d 0 a 0) 0))
(println (##bignum.mdigit-ref d 0))

