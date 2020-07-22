\begin{code}
listprimediv n = [ x | x <- upto n (sieve [2..]), n `mod` x == 0]
                 where sieve (p:ns)   = p:sieve [ n | n <- ns, n `mod` p > 0]
                       upto _ []    = [] 
                       upto n (x:xs) | x<=n      = x:(upto n xs)
                                     | otherwise = []  
\end{code}