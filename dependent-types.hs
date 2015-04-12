{-
 An attempt to follow a tutorial on dependent types in Haskell.
 -- https://www.fpcomplete.com/user/konn/prove-your-haskell-for-great-safety/dependent-types-in-haskell
-}

{-# LANGUGE DataKinds, TypeFamilies #-}
data Nat = Z | S Nat

type family Plus (n :: Nat) (m :: Nat) :: Nat
type instance Plus Z       m = m
type instance Plus Z (S n) m = S (Plus n m)



