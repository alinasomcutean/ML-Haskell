\begin{code}

gcd' x y = [ r | r <- [1..(min x y) `div` 2], x `rem` r == 0, y `rem` r == 0 ]

--------------------------------------------------------------------------------------------------

innerProduct x y = sum (zipWith (*) x y)

\end{code}