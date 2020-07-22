\begin{code}
pb_a [] = ""
pb_a (x:xs) = if(x=='0') then '1' : (pb_a xs)
	      else if(x == '1') then '2' : (pb_a xs)
		   else if(x == '2') then '0' : (pb_a xs)
			else x : (pb_a xs)

charToInt x | x == '0' = 0
	    | x == '1' = 1
	    | x == '2' = 2
	    | x == '3' = 3
	    | x == '4' = 4
	    | x == '5' = 5
	    | x == '6' = 6
	    | x == '7' = 7
	    | x == '8' = 8
	    | otherwise = 9

operation x [] = x
operation x (y:[]) = x
operation x (y:z:xs) = if(y == '+') then operation (x + charToInt(z)) xs
		       else operation (x - charToInt(z)) xs

pb_b (x:xs) = operation (charToInt x) xs

count list x = foldr (+) 0 [1 | num <- list, (charToInt x)==(charToInt num)]

pb_c list = ((count list '0', '0'), (count list '1', '1'), (count list '2', '2'))

\end{code}
