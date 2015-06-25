
;;
;; (##bignum.mdigit-mul! bignum1 i bignum2 j)
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##fixnum->bignum 1234))
(define c (##fixnum->bignum 100))
;(define d 123456789012345678901234567890)

(define (test x y i)
  (println (##bignum.mdigit-mul! x i y i 1 0))
  (println (##bignum.mdigit-ref x i))
  (println (##bignum.mdigit-ref y i)))

(test a b 0)
(test b c 0)

;(test c) 


