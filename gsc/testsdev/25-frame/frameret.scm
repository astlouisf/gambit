(declare (extended-bindings) (not constant-fold) (not safe))

(define (id x) x)

(define x (##make-frame id))

(println (##frame-ret x))
