data AB a b = Leaf b | Branch a (AB a b) (AB a b) deriving Show

type AExp = AB BOp Int
data BOp = Suma | Producto deriving Show

data ExpA = Cte Int | Add ExpA ExpA | Mul ExpA ExpA deriving Show

expA2AExp :: ExpA -> AExp
expA2AExp (Cte k) = Leaf k
expA2AExp (Add e1 e2) = Branch Suma (expA2AExp e1) (expA2AExp e2)
expA2AExp (Mul e1 e2) = Branch Producto (expA2AExp e1) (expA2AExp e2)

aExp2ExpA :: AExp -> ExpA
aExp2ExpA (Leaf x) = Cte x
aExp2ExpA (Branch y t1 t2) =
  let
    e1 = aExp2ExpA t1
    e2 = aExp2ExpA t2
  in case y of  Suma -> Add e1 e2
                Producto -> Mul e1 e2

foldExpA :: (Int -> a) -> (a -> a -> a) -> (a -> a -> a) -> ExpA -> a
foldExpA f _ _ (Cte k) = f k
foldExpA fCte fAdd fMul (Add e1 e2) = fAdd (foldExpA fCte fAdd fMul e1) (foldExpA fCte fAdd fMul e2)
foldExpA fCte fAdd fMul (Mul e1 e2) = fMul (foldExpA fCte fAdd fMul e1) (foldExpA fCte fAdd fMul e2)

expA2AExp' = foldExpA Leaf (Branch Suma) (Branch Producto)
aExp2ExpA' = foldAB Cte (\bop -> case bop of
                                  Suma -> Add
                                  Producto -> Mul)
