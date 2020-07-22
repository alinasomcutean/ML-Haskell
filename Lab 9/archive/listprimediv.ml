fun isprime n = 
    if n = 2 then true
    else if n mod 2 = 0 then false 
         else let
	         fun trydiv m = if m * m > n then true
	                        else if (n mod m = 0) then false
	                             else trydiv (m+2) 
	      in	
	         trydiv 3      
	      end;	    

fun listprimediv n = 
    let 
	fun crtprime n m = if m > n div 2 then if (isprime n) then [n]
	                                       else []
	                   else  if  (n mod m = 0) andalso (isprime m) 
                                 then m::(crtprime n (m+1))
	                         else crtprime n (m+1)
    in
        crtprime n 2
    end;