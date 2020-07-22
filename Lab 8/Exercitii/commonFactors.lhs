\begin{code}
commonFactors x y = [c | c <- [1..(min x y) `div` 2], x `rem` x == 0, y `rem` c == 0]

factors n = [ r | r <- [1..n], n `mod` r == 0]

inters _ [] = []
inters [] _ = []
inters (x:xs) (y:ys) 
	| x == y = x : inters xs ys
	| x < y = inters xs (y:ys)
	| otherwise = inters (x:xs) ys

commonFactors2 x y = inters (factors x) (factors y)
\end{code}
