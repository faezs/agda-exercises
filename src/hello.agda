module hello where

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)

data Ν : Set where
  zero : Ν
  suc : Ν → Ν

{-# BUILTIN NATURAL Ν #-}

_+_ : Ν → Ν → Ν
zero + n = n
(suc m) + n = suc (m + n)


