(declare (extended-bindings) (not constant-fold) (not safe))

(define v1 (##s16vector 111 222))
(define v2 (##make-s16vector 10 -32768))

(define (test v i)
  (println (##s16vector-ref v i))
  (println (##eq? v (##s16vector-set! v i 88)))
  (println (##s16vector-ref v i)))

(test v1 1)
(test v2 9)
