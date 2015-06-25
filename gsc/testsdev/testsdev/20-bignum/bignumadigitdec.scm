
;;
;; (##bignum.adigit-dec! bignum 0)
;; Decrements bignnum and returns 1 if a borrow occured and 0 otherwise.
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 (##fixnum->bignum 2) #f))
(define b (##bignum.make 3 (##fixnum->bignum 1) #f))
;(define c 123456789012345678901234567890)

(define (test x)
  (println (##bignum.mdigit-ref x 0))
  (let ((c (##bignum.adigit-dec! x 0)))
    (println c)
    (println (if (##fx= 1 c) "borrow" "no borrow")))
  (println (##bignum.mdigit-ref x 0))
  (let ((c (##bignum.adigit-dec! x 0)))
    (println c)
    (println (if (##fx= 1 c) "borrow" "no borrow"))))

(test a)
(test b)
;(test c)

