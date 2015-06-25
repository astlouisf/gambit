
;;
;; (##apply procedure list)
;; Simply apply procedure to list and returns the result
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(define (f x y z)
  (##fx+ (##fx+ x y) z))

(define l (##list 1 2 3))

(println (##fx= 6 (##apply f l)))
