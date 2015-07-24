
;;
;; (##unchecked-structure-ref struct index type proc)
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define-type p2d
  id: p2d
  macros:
  x
  y
)

(define a (make-p2d 11 22))

(println (##eq? (##unchecked-structure-ref a 0 #f #f)
                (##structure-type a)))
(println (if (##eq? (##unchecked-structure-ref a 0 #f #f)
                    (##structure-type a))
             "same type"
             "different type"))

(println (##unchecked-structure-ref a 1 #f #f))
(println (if (##fx= (##unchecked-structure-ref a 1 #f #f)
                    (p2d-x a))
             "same x"
             "different x"))

(println (##unchecked-structure-ref a 2 #f #f))
(println (if (##fx= (##unchecked-structure-ref a 2 #f #f)
                    (p2d-y a))
             "same y"
             "different y"))



