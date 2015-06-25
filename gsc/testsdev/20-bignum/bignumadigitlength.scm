
;;
;; (##bignum.adigit-length bignum)
;; Returns the number of components of the bignum.
;; Not necessarily a fixnum could be an internal number
;; representation.
;;


(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##bignum.make 3 #f #t))
;(define c 123456789012345678901234567890)

(define (test x)
  (println (##bignum.adigit-length x))
  (println (##bignum.adigit-length x))
  (println (##bignum.adigit-length x)))

(test a)
(test b)
;(test c)

