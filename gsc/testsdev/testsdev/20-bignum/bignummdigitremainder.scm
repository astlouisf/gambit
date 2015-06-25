
;;
;; (##bignum.mdigit-remainder bignum i fixnum j)
;; return bignum1[i] % bignum2[j] where i and j are both indices to
;; the component of their respective bignum.
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define b (##fixnum->bignum 1234))
(define c (##fixnum->bignum 100))
;(define d 123456789012345678901234567890)

(define (test x)
  (println (##bignum.mdigit-remainder x 1 -1 1))
  (println (##bignum.mdigit-ref x 0))
  (println (##bignum.mdigit-remainder x 1 10 1))
  (println (##bignum.mdigit-ref x 0))
  (println (##bignum.mdigit-remainder x 1 5 1))
  (println (##bignum.mdigit-ref x 0))
  (println (##bignum.mdigit-remainder x 1 453 1))
  (println (##bignum.mdigit-ref x 0)))

(test a)
(test b)
(test c) 


