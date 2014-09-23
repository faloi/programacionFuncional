-- Modelaremos a los Sets como funciones, donde c x = "x pertenece a C"

type Set a = a -> Bool

empty :: Set a
empty x = False

singleton :: Eq a => a -> Set a
singleton = (==)

isIn :: Set a -> a -> Bool
isIn set = set

complemento :: Set a -> Set a
complemento = (not.)

prod :: Set a -> Set b -> Set (a,b)
prod c d = \(x,y) -> c x && d y

diffS :: Set a -> Set a -> Set a
diffS c d = diff (union c d) (intersection c d)
