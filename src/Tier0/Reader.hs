module Tier0.Reader (Environment (..), EnvironmentM, formatUserName, formatHost, formatCurrentDir, formatPrompt) where

import Control.Monad.Reader

data Environment = Environment
  { username :: String, isSuperUser :: Bool, host :: String, currentDir :: String} deriving Eq

type EnvironmentM = Reader Environment

formatUserName :: EnvironmentM String
formatUserName = do 
  x <- ask
  if (isSuperUser x)
  then return "root"
  else return (username x)
  
  
  
  
  
formatHost :: EnvironmentM String
formatHost = do
  x <- ask
  return $ (host x)


formatCurrentDir :: EnvironmentM String
formatCurrentDir = do
  x <- ask
  return $ (currentDir x)

formatPrompt :: EnvironmentM String
formatPrompt = do
  name <- formatUserName
  host <- formatHost
  cwd <- formatCurrentDir
  return $ "{" ++ name ++ "}@{" ++ host ++"}:{" ++ cwd ++ "}"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ``````````````````````````````````````````````````````````````````````````````````````module Tier0.Reader (Environment (..), EnvironmentM, formatUserName, formatHost, formatCurrentDir, formatPrompt) where

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  import Control.Monad.Reader

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  data Environment = Environment
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    { username :: String, isSuperUser :: Bool, host :: String, currentDir :: String} deriving Eq

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  type EnvironmentM = Reader Environment

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  formatUserName :: EnvironmentM String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  formatUserName = do 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    nameMesage <- name
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    isSuperMesage <- super 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    hostMesage <- hostm 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    currentDirMesage <- currentDir
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    return $ [nameMesage, isSuperMesage, hostMesage, currentDirMesage]

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  formatHost :: EnvironmentM String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  formatHost = do 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    x <- ask
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if x == root 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      then return $ "root"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      else return $ username

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  formatCurrentDir :: EnvironmentM String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  formatCurrentDir = do
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    x <- ask
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    return $ (currentDir x)

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  formatPrompt :: EnvironmentM String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  formatPrompt = do
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    x <- ask
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    return $ "{" ++ username ++ "}@{" ++ host ++"}:{" ++ currentDir ++ "}"


````````````````````````````````````````````````````````````````````````````````
