
;;
;; (##first-argument . arguments-list)
;; Returns (car arguments-list).
;;

(declare (extended-bindings) (not constant-fold) (not safe))

(println (##first-argument 0))
(println (##first-argument 1 2 3))
(println (##first-argument '(1 2 3) 2 3))
(println (##first-argument '()))
