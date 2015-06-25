(declare (extended-bindings) (not constant-fold) (not safe))

(define (id x) x)

(define x (##make-frame id))

(println (##frame-slot-live? x 0))
(println (##frame-slot-live? x 1))
(println (##frame-slot-live? x 2))
(println (##frame-slot-live? x 3))
