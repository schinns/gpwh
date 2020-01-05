-- q2.2
inc x = x + 1

double x = x * 2

square x = x ^ 2

-- q2.3

f n = if mod n 2 == 0
      then n - 2 
      else 3 * n + 1

-- qc3.2
doubleDouble x = (\double -> double* 2) (x * 2)

-- qc3.3
overwrite x =
  let x = 3
  in
  let x = 2
  in
  let x = 1
  in
  x 
-- same overwrite fn above in lambda
overwrite_ = (\x ->
               (\x -> 
                (\x -> x
                )1
               )2 
             )3

-- q3.2
counter x = (\x -> (\x -> x)(x + 1)) (x + 1)

-- q4.1
compareLastNames name1 name2 = (\result -> 
                                 if result == EQ
                                 then compare (fst name1) (fst name2)
                                 else result
                               )(compare (snd name1) (snd name2))
