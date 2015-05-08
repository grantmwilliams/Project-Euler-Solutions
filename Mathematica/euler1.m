(* ::Package:: *)

(* ::Input:: *)
(*Select[Range[1,999],(Mod[#,3]==0||Mod[#,5]==0)&]//Total//AbsoluteTiming*)


(* ::Input:: *)
(*Plus@@Select[Range@999,Mod[#,3]==0||Mod[#,5]==0&]//AbsoluteTiming*)


(* ::Input:: *)
(*Fold[If[Mod[#2,3]==0||Mod[#2,5]==0,#1+#2,#1]&,0,Range[0,999]]//AbsoluteTiming*)
