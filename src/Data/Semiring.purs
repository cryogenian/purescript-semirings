module Data.Semiring where

instance semiringBool :: Semiring Boolean where
  one = true
  zero = false
  (*) = (&&)
  (+) = (||)
