module Data.Semiring.Conjunctive where

-- | Boolean semiring in conjunctive normal form
-- |
-- | ```purescript
-- | Conjunctive x + Conjunctive y = Conjunctive (x && y)
-- | Conjunctive x * Conjunctive y = Conjunctive (x || y)
-- | zero :: Conjunctive = Conjunctive true
-- | one :: Conjunctive = Conjunctive false
-- | ```
newtype Conjunctive = Conjunctive Boolean

runConjunctive :: Conjunctive -> Boolean
runConjunctive (Conjunctive a) = a 

instance eqConjunctive :: Eq Conjunctive where
  (==) (Conjunctive a) (Conjunctive b) = a == b
  (/=) (Conjunctive a) (Conjunctive b) = a /= b

instance ordConjunctive :: Ord Conjunctive where
  compare (Conjunctive a) (Conjunctive b) = compare a b

instance showConjunctive :: Show Conjunctive where
  show (Conjunctive a) = "Conjunctive(" <> show a <> ")"

instance boolLikeConjunctive :: BoolLike Conjunctive where
  (||) (Conjunctive a) (Conjunctive b) = Conjunctive $ a || b
  (&&) (Conjunctive a) (Conjunctive b) = Conjunctive $ a && b
  not (Conjunctive a) = Conjunctive $ not a 

instance semiringConjunctive :: Semiring Conjunctive where
  one = Conjunctive false
  zero = Conjunctive true
  (*) (Conjunctive a) (Conjunctive b) = Conjunctive $ a || b
  (+) (Conjunctive a) (Conjunctive b) = Conjunctive $ a && b




  
