{-
 An attempt to follow a tutorial on dependent types in Haskell.
 -- https://www.fpcomplete.com/user/konn/prove-your-haskell-for-great-safety/dependent-types-in-haskell
-}

{-# LANGUAGE DataKinds, TypeFamilies, TypeOperators, GADTs, ExistentialQuantification #-}
data Nat = Z | S Nat

infixl 6 :+

type family   (n :: Nat) :+ (m :: Nat) :: Nat
type instance Z     :+ m = m
type instance (S n) :+ m = S (n :+ m)

data Vector a m
  = (m ~ Z)   => Nil
  | forall n. (m ~ S n) => (:-) a (Vector a n)
infixr 5 :-
