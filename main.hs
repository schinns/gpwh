
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
--q9.1
myElem x [] = False 
myElem e xs = if length fxs > 0 
              then True
              else False
              where fxs = filter (\x -> e == x) xs

-- qc11.1
halve :: Int -> Int
halve x = div x 2

--qc11.2
printDouble :: Int -> String
printDouble x = show(x*2)


--q12.1
type MiddleName = String
type FirstName = String
type LastName = String
data Name = Name FirstName LastName
          | NameWithMiddle FirstName MiddleName LastName
data Sex = Male | Female
data RhType = Pos | Neg
data ABOType = A | B | AB | O
data BloodType = BloodType ABOType RhType
data Patient = Patient { name :: Name
                      , sex :: Sex
                      , age :: Int
                      , height :: Int
                      , weight :: Int
                      , bloodType :: BloodType }

canDonateTo :: Patient -> Patient -> Bool
canDonateTo p1 p2 = case (b1, b2) of
  ((BloodType O _), _) -> True
  (_, (BloodType AB _)) -> True
  ((BloodType A _), (BloodType A _)) -> True
  ((BloodType B _), (BloodType B _)) -> True
  (_, _) -> False
  where b1 = bloodType p1
        b2 = bloodType p2
--q13.3
cycleSucc :: (Bounded a, Enum a, Eq a) => a -> a
cycleSucc n = if n == maxBound
              then minBound
              else succ n
