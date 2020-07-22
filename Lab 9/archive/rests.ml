fun rests []      = [[]] 
 |  rests (x::xs) = (x::xs)::rests xs;
 
