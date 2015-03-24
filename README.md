# Module Documentation

## Module Data.Semiring.Conjunctive

#### `Conjunctive`

``` purescript
newtype Conjunctive
  = Conjunctive Boolean
```

Boolean semiring in conjunctive normal form

```purescript
Conjunctive x + Conjunctive y = Conjunctive (x && y)
Conjunctive x * Conjunctive y = Conjunctive (x || y)
zero :: Conjunctive = Conjunctive true
one :: Conjunctive = Conjunctive false
```

#### `runConjunctive`

``` purescript
runConjunctive :: Conjunctive -> Boolean
```


#### `eqConjunctive`

``` purescript
instance eqConjunctive :: Eq Conjunctive
```


#### `ordConjunctive`

``` purescript
instance ordConjunctive :: Ord Conjunctive
```


#### `showConjunctive`

``` purescript
instance showConjunctive :: Show Conjunctive
```


#### `boolLikeConjunctive`

``` purescript
instance boolLikeConjunctive :: BoolLike Conjunctive
```


#### `semiringConjunctive`

``` purescript
instance semiringConjunctive :: Semiring Conjunctive
```



## Module Data.Semiring.Disjunctive

#### `Disjunctive`

``` purescript
newtype Disjunctive
  = Disjunctive Boolean
```

Boolean semiring in disjunctive normal form

```purescript
Disjunctive x + Disjunctive y = Disjunctive (x || y)
Disjunctive x * Disjunctive y = Disjunctive (x && y) 
zero :: Disjunctive = Disjunctive false
one :: Disjunctive = Disjunctive true
```

#### `runDisjunctive`

``` purescript
runDisjunctive :: Disjunctive -> Boolean
```


#### `eqDisjunctive`

``` purescript
instance eqDisjunctive :: Eq Disjunctive
```


#### `ordDisjunctive`

``` purescript
instance ordDisjunctive :: Ord Disjunctive
```


#### `showDisjunctive`

``` purescript
instance showDisjunctive :: Show Disjunctive
```


#### `boolLikeDisjunctive`

``` purescript
instance boolLikeDisjunctive :: BoolLike Disjunctive
```


#### `semiringDisjunctive`

``` purescript
instance semiringDisjunctive :: Semiring Disjunctive
```



## Module Data.Semiring.Free

#### `Free`

``` purescript
newtype Free a
```

The free `Semiring` for a type `a`.

#### `runFree`

``` purescript
runFree :: forall a. Free a -> [[a]]
```

Unpack a value of type `Free a`.

#### `free`

``` purescript
free :: forall a. a -> Free a
```

Lift a value of type `a` to a value of type `Free a`

#### `liftFree`

``` purescript
liftFree :: forall a s. (Semiring s) => (a -> s) -> Free a -> s
```

`Free` is left adjoint to the forgetful functor from `Semiring`s to types.

#### `lowerFree`

``` purescript
lowerFree :: forall a s. (Semiring s) => (Free a -> s) -> a -> s
```

`Free` is left adjoint to the forgetful functor from `Semiring`s to types.

#### `showFree`

``` purescript
instance showFree :: (Show a) => Show (Free a)
```


#### `eqFree`

``` purescript
instance eqFree :: (Eq a) => Eq (Free a)
```


#### `ordFree`

``` purescript
instance ordFree :: (Ord a) => Ord (Free a)
```


#### `semiringFree`

``` purescript
instance semiringFree :: Semiring (Free a)
```