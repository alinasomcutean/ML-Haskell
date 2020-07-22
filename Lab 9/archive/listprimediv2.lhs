\begin{code}
listprimediv n = [ x | x <- [2..n], n `mod` x == 0, isprime x]
isprime n | n == 1         = False 
          | n == 2         = True
          | n `mod` 2 == 0 = False 
          | otherwise      = membord n (sieve [2..])
                             where sieve (p:ns)     = p:sieve [ n | n <- ns, n `mod` p > 0]
                                   membord n (x:xs) | n == x    = True 
                                                    | n < x     = False 
                                                    | otherwise = membord n xs  
\end{code}