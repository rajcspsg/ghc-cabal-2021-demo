module Main where
import BasicSum
import Test.HUnit
import qualified System.Exit as Exit
 
test1 :: Test
test1 = TestCase (assertEqual "should return 3" 3 (basicSum 1 2))
 
tests :: Test
tests = TestList [TestLabel "test1" test1]
 
main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess
