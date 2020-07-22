\begin{code}
union [] t = t
union s [] = s
union (a:s) (b:t) 
	| a == b = a:union s t 
	| a < b = a:union s (b:t) 
	| otherwise = b:union (a:s) t
\end{code}
