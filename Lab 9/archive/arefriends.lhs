\begin{code}
arefriends x y = y * sum [ dx | dx<-[1..x], x `mod` dx == 0] ==
		 x * sum [ dy | dy<-[1..y], y `mod` dy == 0]	 
\end{code}
