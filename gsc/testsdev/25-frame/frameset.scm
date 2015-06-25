(declare (extended-bindings) (not constant-fold) (not safe))

(define (id x) x)

(define x (##make-frame id))

(define (test x i v)
  (##frame-set! x 0 6))

(test x 0 5)
;(test x 1 6)
;(test x 2 7)
;(test x 3 8)
;(test x 4 9)
