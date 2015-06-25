(declare (extended-bindings) (not constant-fold) (not safe))

(define-type pt
  id: pt
  macros:
  x
  y
)

(define a (make-pt 11 22))

(println (##structure? (##structure-type a)))
(println (if (##structure? (##structure-type a))
             "structure"
             "not structure"))
