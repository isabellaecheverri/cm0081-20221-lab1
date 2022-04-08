{
{-# OPTIONS_GHC -Wno-missing-local-signatures #-}  
module Lexer (alexScanTokens) where
import Syntax 
}
%wrapper "basic"
$digit=0-9

tokens :-
    "--".* ;
    $white+ ;
    else         {\_-> TokenElse }
    false        {\_-> TokenFalse }
    if           {\_-> TokenIf }
    iszero       {\_-> TokenIsZero }
    \(           {\_-> TokenLParen }
    $digit+      {\s ->TokenNat (read s) }
    pred         {\_-> TokenPred }
    \;           {\_-> TokenSemiColon}
    succ         {\_->TokenSucc }
    \)           {\_-> TokenRParen }
    then         {\_-> TokenThen}
    true         {\_-> TokenTrue}
    zero         {\_-> TokenZero}
