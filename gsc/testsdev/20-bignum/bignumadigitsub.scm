
;;
;; (##bignum.adigit-sub! bignum1 i bignum2 j)
;; Subtract the component at index j of bignum2 from the component at index i
;; of bignum 1. Returns 1 if a borrow occured and 0 otherwise.
;;


(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 (##fixnum->bignum 1433) #f))
(define b (##fixnum->bignum 1334))
(define c (##fixnum->bignum 100))
;(define d 123456789012345678901234567890)

(define (test x y z)
  (println (##bignum.mdigit-ref x 0))
  (println (##bignum.mdigit-ref y 0))
  (let ((c (##bignum.adigit-sub! x 0 y 0 z)))
    (println c)
    (println (if c "borrow" "no borrow"))))

(test b c 1)
(test a b 0)


