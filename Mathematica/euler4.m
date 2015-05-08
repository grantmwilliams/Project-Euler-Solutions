(* ::Package:: *)

(* ::Input:: *)
(*Intersection[1000 #+FromDigits@Reverse@IntegerDigits[#]&/@Range[100,999],Join@@Outer[Times,Range[100,999],Range[110,990,11]]]//Max//Timing*)


(* ::Input:: *)
(*Last[Select[Union[Flatten[Table[i*j,{i,100,999},{j,100,999}]]],#===ToExpression[StringReverse[ToString[#]]]&]]//AbsoluteTiming*)


(* ::Input:: *)
(*Outer[(#1 #2//IntegerDigits//If[#==Reverse[#],FromDigits[#],0]&)&,Range[100,999],Range[100,999]]//Max//AbsoluteTiming*)


(* ::Input:: *)
(*pQ=Boole[#==Reverse@#]&@IntegerDigits@#&*)
(**)
(*Array[pQ[1##]##&,{100,100},900,Max]//AbsoluteTiming*)


(* ::Input:: *)
(*Max[Select[Flatten[Table[i j,{i,100,999},{j,100,999}]],(#==Reverse[#]&[IntegerDigits[#]])&]]//AbsoluteTiming*)


(* ::Input:: *)
(*PalindromeQ[x_]:=IntegerDigits[x]==Reverse[IntegerDigits[x]]*)
(*Max[Select[Flatten[Table[i*j,{i,100,999},{j,100,999}]],PalindromeQ]]//AbsoluteTiming*)
