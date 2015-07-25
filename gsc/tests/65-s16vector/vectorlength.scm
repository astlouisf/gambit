(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##s16vector 111 222))
(define b (##make-s16vector 10 -32768))
(define c '#s16(1 2 3 4))

(define (test v)
  (println (##s16vector-length v)))

(test a)
(test b)
(test c)
