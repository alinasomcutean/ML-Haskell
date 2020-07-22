fun zipWithMultiplication nil nil = []
| zipWithMultiplication nil y = y
| zipWithMultiplication x nil = x
| zipWithMultiplication (x::xs) (y::ys) = (x*y) :: (zipWithMultiplication xs ys);

fun sum l = foldr (+) 0 l;

fun innerProduct x [] = sum(x)
| innerProduct [] y = sum(y)
| innerProduct x y = sum(zipWithMultiplication x y);
