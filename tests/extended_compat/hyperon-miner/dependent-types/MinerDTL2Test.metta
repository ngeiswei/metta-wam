!(import! &self MinerDTL2.metta)
;; Test
!(bind! &db (new-space))
!(add-atom &db (Inheritance B A))
!(add-atom &db (Inheritance C A))
!(add-atom &db (Inheritance D E))
!(add-atom &db (Inheritance C E))

!(init-miner &db 1 0.9)
; !(let $ms (ms) (synthesize (: $proof $something) kb rb (fromNumber 5)))

; !(let* (($ms (ms))
;         ((: $proof (minsup $p $ms)) (synthesize (: $proof $something) kb rb (fromNumber 5))))
;       (minsup (fromDebruijn $p $Xvar $Yvar) $ms))
;
; real    13m15.210s
; user    13m10.648s
; sys     0m1.228s
; [(minsup (Inheritance $Xvar E) (S Z)), 
; (minsup (Inheritance C $Yvar) (S Z)), 
; (minsup (Inheritance $Xvar A) (S Z)), 
; (minsup (, (Inheritance $Xvar E) (Inheritance $Xvar E)) (S Z)), 
; (minsup (, (Inheritance $Xvar E) (Inheritance $Xvar E)) (S Z)), 
; (minsup (, (Inheritance $Xvar E) (Inheritance $Xvar E)) (S Z)), 
; (minsup (, (Inheritance $Xvar E) (Inheritance $Xvar E)) (S Z)), 
; (minsup (, (Inheritance $Xvar E) (Inheritance $Xvar E)) (S Z)), 
; (minsup (, (Inheritance $Xvar E) (Inheritance $Xvar E)) (S Z)), 
; (minsup (, (Inheritance C $Yvar) (Inheritance C $Yvar)) (S Z)), 
; (minsup (, (Inheritance C $Yvar) (Inheritance C $Yvar)) (S Z)), 
; (minsup (, (Inheritance C $Yvar) (Inheritance C $Yvar)) (S Z)), 
; (minsup (, (Inheritance C $Yvar) (Inheritance C $Yvar)) (S Z)), 
; (minsup (, (Inheritance C $Yvar) (Inheritance C $Yvar)) (S Z)), 
; (minsup (, (Inheritance C $Yvar) (Inheritance C $Yvar)) (S Z)), 
; (minsup (, (Inheritance $Xvar A) (Inheritance $Xvar A)) (S Z)), 
; (minsup (, (Inheritance $Xvar A) (Inheritance $Xvar A)) (S Z)), 
; (minsup (, (Inheritance $Xvar A) (Inheritance $Xvar A)) (S Z)), 
; (minsup (, (Inheritance $Xvar A) (Inheritance $Xvar A)) (S Z)), 
; (minsup (, (Inheritance $Xvar A) (Inheritance $Xvar A)) (S Z)), 
; (minsup (, (Inheritance $Xvar A) (Inheritance $Xvar A)) (S Z)), 
; (minsup (Inheritance $Xvar (VarIdx (S Z))) (S Z)), 
; (minsup (Inheritance $Xvar (VarIdx (S Z))) (S Z)), 
; (minsup (Inheritance $Xvar (VarIdx (S Z))) (S Z))]
