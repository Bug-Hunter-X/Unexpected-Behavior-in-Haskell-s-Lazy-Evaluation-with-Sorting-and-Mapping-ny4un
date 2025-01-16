```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- This will print [1,2,3,4,5]
  let zs = map (+1) xs
  print zs -- This will print [2,3,4,5,6]

  let ws = sort $ map (+1) xs
  print ws -- This will print [2,3,4,5,6]

  -- The corrected code
  let us = sort $ map (+1) (sort xs) -- Correct order of operations
  print us -- This will print [2,3,4,5,6]
```