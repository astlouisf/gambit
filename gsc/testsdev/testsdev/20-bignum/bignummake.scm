
;;
;; (##bignum.make size bignum complement?)
;; Return a bignum of the specified size made from the bignum passed as argument.
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##not 123))
(define b (##not f))
(define c "")
(define d 1.5)
(define e (##make-vector 2 999))
(define f (##list 1 2 3))
(define g (##bignum.make 3 #f #f))
(define h (##bignum.make 3 #f #t))
(define i 123456789012345678901234567890)
(define j (##bignum.make 3 (##fixnum->bignum 4) #t))
(define k (##fixnum->bignum 1543))


(define (test x)
  (println (if (##bignum? x) "bignum" "not bignum")))

(test 0)
(test 1)
(test a)
(test b)
(test c)
(test d)
(test e)
(test f)
(test (##cdr f))
(test g)
(test h)
(test i)
(test j)
(test k)
