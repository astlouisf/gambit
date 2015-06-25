
;;
;; (##bignum.adigit-ones? bignum i)
;; Returns #t if component at index i of bignum is ?????
;; and #f otherwise.
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##bignum.make 3 #f #t))
;(define c 123456789012345678901234567890)

(define (test x)
  (println (##bignum.adigit-ones? x 0))
  (println (if (##bignum.adigit-ones? x 0) "ones" "not ones")))

(test a)
(test b)
;(test c)
