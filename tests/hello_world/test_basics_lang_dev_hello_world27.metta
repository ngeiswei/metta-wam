

; random bit
(= (bin) 0)
(= (bin) 1)
; binary list
(= (gen-bin $n)
   (if (> $n 0)
       (:: (bin) (gen-bin (- $n 1)))
       ()))
! (gen-bin 3)


; [
;(:: 0 (:: 1 (:: 0 ()))), 
;(:: 0 (:: 1 (:: 1 ()))), 
;(:: 0 (:: 0 (:: 0 ()))), 
;(:: 0 (:: 0 (:: 1 ()))), 
;(:: 1 (:: 1 (:: 0 ()))), 
;(:: 1 (:: 1 (:: 1 ()))), 
;(:: 1 (:: 0 (:: 0 ()))), 
;(:: 1 (:: 0 (:: 1 ())))]

;[ (:: 0    (:: 0      (:: 0 ())))
;, (:: 0    (:: 0      (:: 1 ())))
;, (:: 0    (:: 1      (:: 0 ())))
;, (:: 0    (:: 1      (:: 1 ())))
;, (:: 1    (:: 0      (:: 0 ())))
;, (:: 1    (:: 0      (:: 1 ())))
;, (:: 1    (:: 1      (:: 0 ())))
;, (:: 1    (:: 1      (:: 1 ())))]
;% 558,043 inferences, 0.532 CPU in 0.860 seconds (62% CPU, 1047979 Lips)