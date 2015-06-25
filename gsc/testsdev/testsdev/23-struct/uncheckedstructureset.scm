
;;
;; (##unchecked-structure-set! struct value index type proc)
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define-type p2d
  ;id: p2d
  macros:
  x
  y
)

(define a (make-p2d 11 22))

(define (test x i v)
  (##unchecked-structure-set! x v i #f #f)
  (println (##unchecked-structure-ref x i #f #f))
  (println (if (##fx= (##unchecked-structure-ref x i #f #f)
                      v)
               "same value"
               "different value")))

(test a 1 -11)
(test a 2 -22)


