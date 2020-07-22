fun reverse xs = let
		   fun rev [] acc = acc
		   | rev (x::xs) acc = rev xs (x::acc)
		 in
		   rev xs []
		 end;

fun allFactors n i l = if (i > n div 2) then reverse (n::l)
			else if (n mod i = 0) then allFactors n (i+1) (i::l)
				else allFactors n (i+1) l;

fun factors n = allFactors n 2 [1];

fun inters _ [] = []
| inters [] _ = []
| inters (x::xs) (y::ys) = if (x = y) then x::(inters xs ys)
			   else if(x < y) then inters xs (y::ys)
				else inters (x::xs) ys;

fun commonFactors x y = inters (factors x) (factors y);
