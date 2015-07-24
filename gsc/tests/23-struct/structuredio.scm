
;;
;; (##structure-direct-instance-of? structure type-id)
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define-type p2d
  id: p2d
  macros:
  x
  y
)
#;
(define-type-of-p2d p3d
  id: p3d
  macros:
  z
)

(define a (make-p2d 11 22))
#;(define b (make-p3d 11 22 33))


(define (test x)
  (println (##structure-direct-instance-of? x 'p2d))
  (println (if (##structure-direct-instance-of? x 'p2d)
               "direct instance of p2d"
               "not direct instance of p2d"))
#;  (println (##structure-direct-instance-of? x 'p3d))
#;  (println (if (##structure-direct-instance-of? x 'p3d)
               "direct instance of p3d"
               "not direct instance of p3d"))) 

(test a)
#;(test b)
