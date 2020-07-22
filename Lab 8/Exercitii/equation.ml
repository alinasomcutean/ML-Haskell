exception BothParametersZero;
exception OneParameterZero;

fun equation a b = if ((a = 0) andalso (b = 0)) then raise BothParametersZero
		   else if (a = 0) then raise OneParameterZero
			else Real.fromInt(~b)/Real.fromInt(a);
