
;;
;; (##bignum.mdigit-div! bignum1 i bignum2 j)
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #t))
(define b (##fixnum->bignum 1234))
(define c (##fixnum->bignum 100))
;(define d 123456789012345678901234567890)

(define (test x y i)
  (println (##bignum.mdigit-div! x i y i 1 0))
  (println (##bignum.mdigit-ref x i))
  (println (##bignum.mdigit-ref y i)))

(test b c 0)

;(test c) 


