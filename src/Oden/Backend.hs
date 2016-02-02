module Oden.Backend where

import Oden.Compiler.Monomorphization

data CodegenError = UnexpectedError String
                  deriving (Show, Eq, Ord)

data CompiledFile = CompiledFile FilePath String
                  deriving (Show, Eq, Ord)

class Backend b where
  codegen :: b -> MonomorphedPackage -> Either CodegenError [CompiledFile]
