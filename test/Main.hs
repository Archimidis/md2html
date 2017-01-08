module Main where

import Protolude
import Test.Tasty (defaultMain, testGroup)

import ParserSpec

main :: IO ()
main = defaultMain $ testGroup "Tests"
    [ ParserSpec.tests
    ]
