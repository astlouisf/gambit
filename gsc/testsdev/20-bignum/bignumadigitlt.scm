
;;
;; (##bignum.adigit-< bignum1 bignum2 i)
;; Compare the components at index i of both bignums.
;; Returns #t or #f according to the comparison operator.
;;


(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##bignum.make 3 #f #t))
;(define c 123456789012345678901234567890)

(define (test x y)
  (println (##bignum.adigit-< x y 0))
  (println (if (##bignum.adigit-< x y 0) "less" "not less")))

(test a a)
(test a b)
(test b b)
;(test c)

