\begin{code}
innerProduct v1 [] = sum(v1)
innerProduct [] v2 = sum(v2)
innerProduct v1 v2 = sum(zipWith (*) v1 v2)
\end{code}
