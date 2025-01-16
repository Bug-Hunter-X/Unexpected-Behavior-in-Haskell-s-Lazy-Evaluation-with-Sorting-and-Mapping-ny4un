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

  -- The bug is here!
  let us = sort $ map (+1) $ sort xs
  print us -- This will also print [2,3,4,5,6] and not [2,3,4,5,6] as expected
```