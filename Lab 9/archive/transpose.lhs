
\begin{code}
m1 = [[1,2,3], [4,5,6]]
transpose xss = [ map (!! i) xss | i <- [0 .. (length (head xss)) - 1]]
\end{code}