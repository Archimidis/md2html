module ParserSpec (tests) where

import Protolude
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))
import Test.Tasty.QuickCheck as QC

import TestUtils (testWithProvider)

tests :: TestTree
tests = testGroup "Parser" [properties, units]

properties :: TestTree
properties = testGroup "Properties"
    [ QC.testProperty "sort == sort . reverse" $
        \xs -> sort (xs :: [Int]) == sort (reverse xs)
    ]

units :: TestTree
units = testGroup "Units"
    [ testCase "True is true" $ True @?= True
    ]

