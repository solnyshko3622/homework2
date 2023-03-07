module Tier1.Reader (cd, su) where

import Control.Monad.Reader
import Tier0.Reader (Environment (..), EnvironmentM)

cd :: String -> EnvironmentM a -> EnvironmentM a
cd dir = do
  x <- ask
  return $ (currentDir $ currentDir++x)

su :: EnvironmentM a -> EnvironmentM a
su env = do
  isSuperUser <- True
