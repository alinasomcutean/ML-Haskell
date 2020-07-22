fun sumfact x i s = 
  if i=x then s+x 
  else if (x mod i = 0) then sumfact x (i+1) (s+i)
       else sumfact x (i+1) s;
       
fun arefriends x y = y*(sumfact x 1 0) = x*(sumfact y 1 0); 
