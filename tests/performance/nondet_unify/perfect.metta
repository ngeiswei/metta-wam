;
;                      Create perfect numbers



  (= 
    (top) 
    ( (findall $C 
        (perfect 100 $C) $X) (ok $X)))


  (= 
    (ok  
      (3213876088517980551083924184681057554444177758164088967397376 12554203470773361527671578846336104669690446551334525075456 191561942608236107294793378084303638130997321548169216 46768052394588893382517909811217778170473142550528 182687704666362864775460301858080473799697891328 44601490397061246283066714178813853366747136 2787593149816327892690784192460327776944128 10889035741470030830754200461521744560128 2658455991569831744654692615953842176 166153499473114483824745506383331328 40564819207303336344294875201536 9903520314282971830448816128 38685626227663735544086528 2417851639228158837784576 9444732965670570950656 2305843008139952128 144115187807420416 35184367894528 137438691328 8589869056 33550336 2096128 8128 496 28 6)) True)

;
;                       divisible(10, 2).


  (= 
    (divisible $X $Y) 
    ( (is $N 
        (* $Y $Y)) 
      (=< $N $X) 
      (=:= 
        (mod $X $Y) 0)))
  (= 
    (divisible $X $Y) 
    ( (< $Y $X) 
      (is $Y1 
        (+ $Y 1)) 
      (divisible $X $Y1)))


;
;                         isprime([3], Z).


  (= 
    (isprime 
      (Cons  $X $_) $X) 
    ( (is $Y 2) 
      (> $X 1) 
      (not (divisible $X $Y))))
  (= 
    (isprime 
      (Cons  $_ $T) $Z) 
    (isprime $T $Z))


;
;                          Calculate the power of one number

;
;                          ie power(2, 10, R)


  (= 
    (power $_ 0 1) 
    (set-det))
  (= 
    (power $N $K $R) 
    ( (is $K1 
        (- $K 1)) 
      (power $N $K1 $R1) 
      (is $R 
        (* $R1 $N))))


;
;                            formula of perfect numbers 2^(p-1)*(2^p-1)

;
;                            ie calc(2, 10, R)


  (= 
    (calc 2 $K $R) 
    ( (power 2 $K $X) 
      (is $R1 
        (- $X 1)) 
      (power 2 
        (- $K 1) $R2) 
      (is $R 
        (* $R1 $R2))))

;
;                             using lists

;
;                             ie calc([2, 3, 4], R).


  (= 
    (listperf 
      (Cons  $K $_) $R) 
    (calc 2 $K $R))
  (= 
    (listperf 
      (Cons  $_ $T) $Z) 
    (listperf $T $Z))


;
;                              generate one list of N numbers.

;
;                              genList(10, L).


  (= 
    (generateList  0 ()) True)
  (= 
    (generateList $N 
      (Cons  $X $Xs)) 
    ( (> $N 0) 
      (is $X 
        (+ $N 1)) 
      (is $N1 
        (- $N 1)) 
      (generateList $N1 $Xs)))

;
;                                list of N perfect numbers

;
;                                perfect(100, C)


  (= 
    (perfect $N $C) 
    ( (generateList $N $R) 
      (findall $L 
        (isprime $R $L) $P) 
      (listperf $P $C)))

