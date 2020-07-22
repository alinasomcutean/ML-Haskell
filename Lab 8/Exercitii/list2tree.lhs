\begin{code}
upTo _ [] = []
upTo a (x:xs) 
	| a == x = []
	| otherwise = x:(upTo a xs)

startFrom _ [] = []
startFrom a (x:xs)
	| a == x = xs
	| otherwise = startFrom a xs

data Tree = Empty
	| Node Tree Int Tree

list2tree [] [] = Empty
list2tree [e] [_] = Node Empty e Empty
list2tree (x:xs) y = if left /= [] && right /= []
		     then Node (list2tree ((upTo (last left) xs) ++ [(last left)]) left)
				x
				(list2tree (startFrom (last left) xs) right)
		     else if right /= []
			  then Node Empty x (list2tree xs right)
			  else Node (list2tree xs left) x Empty
				where
				   left = upTo x y
				   right = startFrom x y

printIndent 1 = putChar ' '
printIndent n = do
		  putChar ' '
		  printIndent (n-1)

printTree Empty n = do
			printIndent n
			putStr ".\n"

printTree (Node left no right) n = do
					printIndent n
					print no
					printTree left (n+3)
					printTree right (n+3)

prettyPrintTree tree = printTree tree 1

t1 = list2tree [2,1,3] [1,2,3]	
t2 = list2tree [4,2,1,3,5,6] [1,2,3,4,5,6]
t3 = list2tree [30,20,25,40,35] [20,25,30,35,40]
t4 = list2tree [30,20,25,22,27,40,35] [20,22,25,27,30,35,40]
t5 = list2tree [30,20,25,22,27,40,35,37] [20,22,25,27,30,35,37,40]
t6 = list2tree [40,35,37] [35,37,40]
t7 = list2tree [35,37] [35,37]
\end{code}
