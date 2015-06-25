(declare (extended-bindings) (not constant-fold) (not safe))

(define (id x) x)

(define x (##make-frame id))

(println (##frame-ref x 0))
(println (##frame-ref x 1))
(println (##frame-ref x 2))
(println (##frame-ref x 3))
