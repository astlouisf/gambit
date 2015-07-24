(declare (extended-bindings) (not constant-fold) (not safe))

(define-type pt
  id: pt
  macros:
  x
  y
)

(define a (##not 123))
(define b (##not f))
(define c "")
(define d 1.5)
(define e (##make-vector 2 999))
(define f (##list 1 2 3))
(define g (##bignum.make 3 #f #f))
(define h (##bignum.make 3 (##fixnum->bignum 4) #f))
(define i (##ratnum-make 11 3))
(define j (##ratnum-make 2 3))
(define k (##cpxnum-make 11 3))
(define l (make-pt 11 22))


(define (test x)
  (println (##structure? x))
  (println (if (##structure? x) "structure" "not structure")))

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
(test l)
