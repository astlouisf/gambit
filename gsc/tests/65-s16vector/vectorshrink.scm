(declare (extended-bindings) (not constant-fold) (not safe))

(define v1 (##s16vector 111 222))
(define v2 (##make-s16vector 10 -32768))

(define (test v n)
  (println (##eq? v (##s16vector-shrink! v n)))
  (println (##s16vector-length v)))

(test v1 1)
(test v2 5)
