module Tier0.Writer (Tree (..), sumAndTraceInOrder) where

import Control.Monad.Writer

data Tree a = Leaf a | Branch (Tree a) a (Tree a) deriving Eq

sumAndTraceInOrder :: Num a => Tree a -> Writer [a] a
sumAndTraceInOrder (Leaf x) = writer (x, [x])
sumAndTraceInOrder (Branch l v r) = do
  tell $ return v
  x <- sumAndTraceInOrder l
  y <- sumAndTraceInOrder r
  return $ x + v + y



sum' :: Int -> Int -> Writer String Int
sum' x y = do
  tell $ "first operand: " ++ show x ++ "\n"
  tell $ "second operand: " ++ show y ++ "\n"
  return $ x + y

