import Test.HUnit
import Prelude

line = "minishell,B"

grades = ["printf,A","cpool,C","myls,A","bsq,B","corewar,W","r-type,C","haskell,Z"]

hello :: Int -> String
hello _ = ""

helloWorld :: IO()
helloWorld = pure()

arraySum :: [Int] -> Int
arraySum _ = 0

arraySize :: [a] -> Int
arraySize _ = 0

arrayAverage :: [Int] -> Int
arrayAverage _ = 0

parseLine :: String -> (String, String) -> (String, String)
parseLine _ _ = ("", "")

parseTabLine :: [String] -> [(String, String)]
parseTabLine _ = []

filterTabLine :: [(String, String)] -> [(String, String)]
filterTabLine _ = []

gpaCalculator :: Float -> Float -> Float -> String -> Float
gpaCalculator _ _ _ _ = 0

-- Tests functions, do NOT edit them 

testHello = TestCase (do
    assertEqual "for (hello 1)," "One !" (hello 1)
    assertEqual "for (hello 2)," "Two" (hello 2)
    assertEqual "for (hello 3)," "3" (hello 3))

testArraySum = TestCase (do
    assertEqual "for (arraySum [1,2,3])," 6 (arraySum [1,2,3])
    assertEqual "for (arraySum [])," 0 (arraySum []))

testArraySize = TestCase (do
    assertEqual "for (arraySize [1,2,3])," 3 (arraySize [1,2,3])
    assertEqual "for (arraySize [])," 0 (arraySize []))

testArrayAverage = TestCase (do
    assertEqual "for (arrayAverage [1,2,3])," 2 (arrayAverage [1,2,3])
    assertEqual "for (arrayAverage [1,2,3,4])," 2 (arrayAverage [1,2,3,4])) -- Integer division

testParseLine = TestCase (do
    assertEqual "for (parseLine line (\"\", \"\"))," ("minishell", "B") (parseLine line ("", "")))

testParseTabLine = TestCase (do
    assertEqual "for (parseTabLine grades)," [("printf","A"),("cpool","C"),("myls","A"),("bsq","B"),("corewar","W"),("r-type","C"),("haskell","Z")] (parseTabLine grades))

testFilterTabLine = TestCase (do
    assertEqual "for (filterTabLine (parseTabLine grades))," [("printf","A"),("cpool","C"),("myls","A"),("bsq","B"),("r-type","C")] (filterTabLine (parseTabLine grades)))

testGPACalculator = TestCase (do
    assertEqual "for (gpaCalculator 120 2.5 4 A)," 2.548387 (gpaCalculator 120 2.5 4 "A"))

tests = TestList [TestLabel "testHello" testHello,
                  TestLabel "testArraySum" testArraySum,
                  TestLabel "testArraySize" testArraySize,
                  TestLabel "testArrayAverage" testArrayAverage,
                  TestLabel "testParseLine" testParseLine,
                  TestLabel "testParseTabLine" testParseTabLine,
                  TestLabel "testFilterTabLine" testFilterTabLine,
                  TestLabel "testGPACalculator" testGPACalculator]

main :: IO Counts
main = do
    runTestTT tests
