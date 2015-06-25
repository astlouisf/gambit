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
(define g (make-pt 11 22))


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
