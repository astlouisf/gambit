(declare (extended-bindings) (not constant-fold) (not safe))

(println (##subtype 'symbol))
(println (##subtype keyword:))
(println (##subtype (##cons 1 2)))
(println (##subtype (##list 1 2 3)))
(println (##subtype (##bignum.make 3 #f #f)))
(println (##subtype (##ratnum-make 1 2)))
(println (##subtype (##cpxnum-make 1 2)))
