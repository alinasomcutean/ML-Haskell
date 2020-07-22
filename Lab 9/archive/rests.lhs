\begin{code}
rests []     = [[]] 
rests (x:xs) = (x:xs):rests xs 
\end{code}