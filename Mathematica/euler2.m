(* ::Package:: *)

(* ::Input:: *)
(*Total@Fibonacci@Range[3,33,3]//AbsoluteTiming*)


(* ::Input:: *)
(*n2[fn_] := Floor@N@Log[GoldenRatio,(fn Sqrt[5]+Sqrt[5 fn^2-4])/2]*)


(* ::Input:: *)
(*n2[4000000]//AbsoluteTiming*)


(* ::Input:: *)
(*Floor@N@Log[GoldenRatio,(4000000 Sqrt[5]+Sqrt[5 4000000^2-4])/2]//AbsoluteTiming*)


(* ::Input:: *)
(*Select[Fibonacci[3 Range@33],#<=4*^6&]//Total//AbsoluteTiming*)
