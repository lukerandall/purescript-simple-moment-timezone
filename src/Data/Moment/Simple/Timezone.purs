-- | A simple PureScript wrapper around moment-timezone.js
module Data.Moment.Simple.Timezone
  ( tz
  , tzFormat
  ) where

import Prelude

import Data.Moment.Simple.Internal (clone)
import Data.Moment.Simple.Types (Moment())

import Data.Function (Fn2(), runFn2, Fn3(), runFn3)

type Timezone = String

foreign import tz_ :: Fn2 Moment Timezone Moment

tz :: Moment -> Timezone -> Moment
tz m t = runFn2 tz_ (clone m) t

foreign import tzFormat_ :: Fn3 Moment Timezone String String

tzFormat :: Moment -> Timezone -> String -> String
tzFormat m t f = runFn3 tzFormat_ (clone m) t f
