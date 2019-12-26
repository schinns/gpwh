-- q2.2
inc x = x + 1

double x = x * 2

square x = x ^ 2

-- q2.3

f n = if mod n 2 == 0
      then n - 2 
      else 3 * n + 1

-- q3.2
doubleDouble x = (\double -> double* 2) (x * 2)

-- q3.3
overwrite = (\x -> 
  let x = 3
  in
  let x = 2
  in
  let x = 1
  in
  x) 


