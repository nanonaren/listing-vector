-----------------------------------------------------------------------------
-- |
-- Module      :  Data.Listing.Vector
-- Copyright   :  (C) 2013 Naren Sundar
-- License     :  BSD-style (see the file LICENSE)
-- Maintainer  :  Naren Sundar <nano.naren@gmx.com>
-- Stability   :  experimental
-- Portability :  portable
--
----------------------------------------------------------------------------

\begin{code}

{-# LANGUAGE TypeFamilies #-}

module Data.Listing.Vector
    (
    ) where

import Data.Listing
import qualified Data.Vector as V
import qualified Data.Vector.Unboxed as U

instance Listing (V.Vector a) where
    type Elem (V.Vector a) = a
    type Index (V.Vector a) = Int
    type IndexElem (V.Vector a) = a
    toList = V.toList
    fromList = V.fromList
    lookup = (V.!?)
    (!) = (V.!)
    singleton = V.singleton
    size = V.length
    empty = V.empty
    null = V.null
    head = V.head
    tail = V.tail

instance U.Unbox a => Listing (U.Vector a) where
    type Elem (U.Vector a) = a
    type Index (U.Vector a) = Int
    type IndexElem (U.Vector a) = a
    toList = U.toList
    fromList = U.fromList
    lookup = (U.!?)
    (!) = (U.!)
    singleton = U.singleton
    size = U.length
    empty = U.empty
    null = U.null
    head = U.head
    tail = U.tail

\end{code}