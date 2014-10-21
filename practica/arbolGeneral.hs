data AG a = GNode a [AG a] deriving Show

mirrorAG :: AG a -> AG a
mirrorAG (GNode x ts) = GNode x ((reverse.map mirrorAG) ts)

foldAG :: (a -> c -> b) -> ([b] -> c) -> AG a -> b
foldAG g k (GNode x ts) = g x (k (map (foldAG g k) ts))

mapAG :: (a -> b) -> AG a -> AG b
mapAG f = foldAG (\x -> GNode (f x)) id

ejemplo = GNode 1 [
            GNode 2 [],
            GNode 3 [
                GNode 4 [],
                GNode 5 []
            ]
          ]
