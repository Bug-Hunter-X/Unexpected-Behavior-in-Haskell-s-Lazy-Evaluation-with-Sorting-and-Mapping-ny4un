# Haskell Lazy Evaluation Bug
This repository demonstrates a subtle bug in Haskell related to lazy evaluation when combining list sorting and mapping operations.  The program showcases unexpected behavior when sorting a list before mapping a function.  The solution provides a corrected implementation.  This highlights the importance of understanding Haskell's lazy evaluation semantics to avoid potential pitfalls.

## Bug Description
The original code attempts to sort a list, then apply a mapping function, expecting a particular sorted result. However, due to lazy evaluation, this doesn't occur as expected. The solution demonstrates the correct way to ensure the operations are performed in the intended order.

## How to reproduce
1. Clone the repository.
2. Compile and run `bug.hs`
3. Observe the unexpected output.
4. Compile and run `bugSolution.hs`
5. Observe the corrected output.
