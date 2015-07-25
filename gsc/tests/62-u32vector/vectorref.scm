(declare (extended-bindings) (not constant-fold) (not safe))

(define v1 (##u32vector 111 65536))
(define v2 (##make-u32vector 10 99))
(define v3 '#u32(1 2 3 4))

(define (test v i)
  (println (##u32vector-ref v i)))

(test v1 0)
(test v1 1)

;(test v2 9)

(test v3 3)
