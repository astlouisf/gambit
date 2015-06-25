;;
;; (##bignum.adigit-add! bignum1 0 bignum2 0 i)
;; Adds the components at index i of both bignums
;; and returns 1 if a carry occured and 0 otherwise.
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #t))
(define b (##fixnum->bignum 1234))
(define c (##fixnum->bignum 100))
;(define d 123456789012345678901234567890)

(define (test x y z)
  (let ((c (##bignum.adigit-add! x 0 y 0 z)))
    (println c)
    (println (if c "carry" "no carry")))
  (println (##bignum.mdigit-ref x 0))
  (println (##bignum.mdigit-ref y 0)))

(test b c 1)
(test a b 0)


