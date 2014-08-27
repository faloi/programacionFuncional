# Tipos

Entendemos a los tipos como un _conjunto de valores_ que comparten _propiedades_.

## Asignación

```haskell
e :: A
```

Se lee _la expresión **e** es de tipo **A**_ y significa que el valor denotado por `e` pertenece al conjunto de valores denotado por `A`.

Se puede deducir el tipo de una expresión a partir de su constitución, veamos algunas reglas:

> **Si** _e1 :: A_ **y** _e2 :: B_ **entonces** _(e1, e2) :: (A, B)_
> 
> **Si** _m, n :: Int_ **entonces** _(m + n) :: Int_
> 
> **Si** _f :: A -> B_ **y** _e :: A_ **entonces** _f e :: B_
> 
> **Si** _d = e_ **y** _e :: A_ **entonces** _d :: A_
