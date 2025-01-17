# Floating Point Comparison Issue in MATLAB
This repository demonstrates an uncommon bug in MATLAB related to floating-point comparisons with zero. The issue stems from the limitations of floating-point representation and can lead to unexpected behavior in conditional statements.

## Bug Description
The `myFunction` MATLAB function is designed to perform different calculations based on the input `x`.  However, due to floating-point precision limitations, comparisons with zero using `==` can produce inconsistent results.  Very small numbers close to zero may be incorrectly evaluated, leading to the wrong branch of the conditional statement being executed.

## How to Reproduce
1. Clone this repository.
2. Open the `bug.m` file in MATLAB.
3. Run the script.
4. Observe the unexpected output for inputs that are very close to zero, both positive and negative.

## Solution
The `bugSolution.m` file provides a corrected version of the function, demonstrating how to mitigate the issue using a tolerance-based comparison.

## Note
This bug highlights the importance of understanding floating-point limitations when writing numerical code. It is crucial to avoid direct comparisons with zero in many numerical applications.