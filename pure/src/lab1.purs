module Lab1 where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List(List(..))
import Data.Maybe(Maybe(..))

import Data.List.Types (List(..), (:))

singleton :: forall q. q -> List q
singleton q = (Cons q Nil) 


null :: forall q. List q -> Boolean
null Nil = true
null _ = false


snoc :: forall q. List q -> q -> List q
snoc Nil p = p:Nil
snoc (x:Nil) p =  x: ( p:Nil)
snoc (x: xs) p = x: (snoc xs p)


length :: forall q. List q -> Int
length Nil=0
length (_:xs) = length(xs)+1 


test:: Effect Unit
test = do 
    log (show(singleton ( 1 )))
    log $ show $ null ( Nil )
    log $ show $ null ( Cons 1 (Cons 1 Nil) )
    log $ show $ snoc  (1:2:3:4:Nil)(5)
    log $ show $ length (1:2:3:4:Nil)

