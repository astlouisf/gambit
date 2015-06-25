
;;
;; (##bignum.adigit-zero? bignum i)
;; Returns #t if component at index i of the bignum is zero and #f otherwise.
;;


(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##bignum.make 3 #f #t))
;(define c 123456789012345678901234567890)

(define (test x)
  (println (##bignum.adigit-zero? x 0))
  (println (if (##bignum.adigit-zero? x 0) "zero" "not zero")))

(test a)
(test b)
;(test c)

