
;;
;; (##bignum.adigit-inc! bignum i)
;; Decrements bignnum component at index i
;; and returns 1 if a carry occured and 0 otherwise.
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##bignum.make 3 #f #t))
;(define c 123456789012345678901234567890)

(define (test x)
  (let ((c (##bignum.adigit-inc! x 0)))
    (println c)
    (println (if (##fx= 1 c) "carry" "no carry")))
  (println (##bignum.mdigit-ref x 0))
  (let ((c (##bignum.adigit-inc! x 0)))
    (println c)
    (println (if (##fx= 1 c) "carry" "no carry")))
  (println (##bignum.mdigit-ref x 0)))

(test a)
(test b)
;(test c)

