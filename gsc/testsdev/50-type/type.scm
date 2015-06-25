(declare (extended-bindings) (not constant-fold) (not safe))

;; base
(println (##type #!eof))
(println (##type (##void)))

;; bool
(println (##type #f))
(println (##type #t))

;; pair
(println (##type (##cons 1 2)))
(println (##type (##list 1 2 3)))
(println (##type '()))

;; num
(println (##type 0))
(println (##type 1.0))
(println (##type (##bignum.make 3 #f #f)))
(println (##type (##ratnum-make 1 2)))
(println (##type (##cpxnum-make 1 2)))

(println (##type 'symbol))
(println (##type keyword:))

