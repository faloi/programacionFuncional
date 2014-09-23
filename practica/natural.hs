data Nat = Zero | Succ Nat deriving Show

oddNat :: Nat -> Bool
oddNat Zero = True
oddNat (Succ n) = evenNat n

evenNat :: Nat -> Bool
evenNat Zero = False
evenNat (Succ n) = oddNat n

inc2 :: Nat -> Nat
inc2 = (Succ).(Succ)
