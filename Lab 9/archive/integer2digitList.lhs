\begin{code}
unfold p h t x
 | p x       = []
 | otherwise = (h x) : unfold p h t (t x)
\end{code}

\begin{code}
i2dl :: Integral t => t -> [t]
i2dl n = unfold (==0) (`mod` 10) (`div` 10) n
\end{code}