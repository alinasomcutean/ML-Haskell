fun cf m n i = if ((i>m) orelse (i>n)) then []
                else if (((n mod i) = 0) andalso ((m mod i) = 0)) then [i] @ cf m n (i+1)
                else cf m n (i+1);

fun commonFactor a b = cf a b 1;

(* ------------------------------------------------------------- *)

exception BothParametersZero;
exception OneParameterZero;

fun equation(a, b) = if ((a = 0) andalso (b = 0)) then raise BothParametersZero
                      else if (a = 0) then raise OneParameterZero
                      else Real.fromInt(~b)/Real.fromInt(a);

(* ------------------------------------------------------------- *)

fun zipWithMultiplication nil nil         = []
 |  zipWithMultiplication nil y           = y
 |  zipWithMultiplication x nil           = x
 |  zipWithMultiplication (x::xs) (y::ys) = x*y :: (zipWithMultiplication xs ys);

fun sum l = foldr (+) 0 l;

fun innerProduct a b = sum(zipWithMultiplication a b);