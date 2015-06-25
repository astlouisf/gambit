
;;
;; (##bignum.mdigit-test? q-hat v_n-2 r-hat u_j-2))
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##bignum.make 3 #f #t))
;(define c 123456789012345678901234567890)

(define (test x y)
  (println (##bignum.mdigit-test? x 0 y 0)))

(test a a)
(test a b)
(test b b)
;(test c)
