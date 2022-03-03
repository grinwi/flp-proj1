import System.Environment
import System.IO
import Data.List

import Minimize
import ParseInput
import Types


parseArgs :: [String] -> (Integer, String)
-- stdIn
parseArgs [x]
  | x == "-i" = (0, [])
  | x == "-1" = (1, [])
  | x == "-2" = (2, [])
-- file
parseArgs [x, fileName]
  | x == "-i" = (0, fileName)
  | x == "-1" = (1, fileName)
  | x == "-2" = (2, fileName)
parseArgs _ = error "Invalid arguments" 
main = do 
    arguments <- getArgs
    progName <- getProgName

    putStrLn arguments

main :: IO()
main = do
    -- Parse args
    argv <- getArgs
    let (args, inputSrc) = parseArgs argv

    input <- fmap lines $ if (inputSrc == [])
        then getContents
        else readFile inputSrc


    return ()
    -- parse input
    -- minimize grammar
