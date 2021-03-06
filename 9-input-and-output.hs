import System.Environment
import Data.List

{-
 - Lets implement the UNIX echo command
 - The program arguments are simply printed to the standard output.
 - If the first argument is -n, this argument is not printed, and no trailing newline is printed
 -}
  
main :: IO ()
main = do
    first:args <- getArgs
    let noNewline = first == "-n"
    let terminate = if noNewline then putStr else putStrLn
    let argsToPrint = if noNewline then args else first:args
    mapM putStr $ intersperse " " argsToPrint
    terminate ""

{- Write a lottery number picker
 - This function should take a StdGen instance, and produce a list of six unique numbers between 1 and 49, in numerical order
 -}
-- lottery :: StdGen -> [Int]
-- lottery gen = undefined
