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

-- q4.2
dcOffice name = nameText ++ " esq " ++ "PO Box Washington DC"
                where nameText = (fst name) ++ " " ++ (snd name)

-- q5.1
binaryPartialApplication binaryFunction x = (\y -> binaryFunction x y)

-- q6.1
myRepeat x = cycle x:[]

--q7.1
myTail xs = case length xs of
  0 -> []
  _ -> tail xs

--q7.2
myGCD a b = case remainder of
  0 -> b
  _ -> myGCD b remainder
  where remainder = a `mod` b

--qc8.1
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

--q8.1
myReverse [] = []
myReverse xs = last:myReverse noLast 
  where l = length xs - 1
        last = xs !! l 
        noLast = take l xs

--qc9.1
myRemove test [] = []
myRemove test (x:xs) = if test x
                       then myRemove test xs
                       else x:myRemove test xs

