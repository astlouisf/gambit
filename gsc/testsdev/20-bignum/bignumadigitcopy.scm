
;;
;; (##bignum.adigit-copy! bignum1 i bignum2 j)
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##bignum.make 3 #f #f))
(define c (##bignum.make 3 (##fixnum->bignum 1543) #f))

(define (cp x i y j)
  ; The c version of the ##bignum.adigit-copy! function doesn't return its
  ; first argument...
  ; (println (if (##fx= (##bignum.mdigit-ref y j)
  ;                     (##bignum.mdigit-ref (##bignum.adigit-copy! x i y j) i))
  ;              "same"
  ;              "not same"))
  (##bignum.adigit-copy! x i y j)
  (println (##bignum.mdigit-ref x i))
  (println (##bignum.mdigit-ref y j))
  (println (if (##fx= (##bignum.mdigit-ref y j)
                      (##bignum.mdigit-ref x i))
               "same"
               "not same")))

(cp a 2 c 0)
(cp a 0 c 1)
(cp a 1 c 2)
