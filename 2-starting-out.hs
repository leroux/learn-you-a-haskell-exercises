{-
 -Once you've installed Haskell from http://www.haskell.org/platform/, load the interpreter with the command ghci.
 -
 -You can load (and reload) this file in the interpreter with the command: ":l 2-starting-out.hs"
 -
 -The first function has been completed as an example. All the other functions are undefined.
 -They can be implemented in one line using the material covered in http://learnyouahaskell.com/starting-out
 -
 -All indices are zero based.
 -}

-- Find the penultimate element in list l
penultimate l = last (init l)

main :: IO ()
main = undefined

findK k l = l !! k
isPalindrome l = l == reverse l
duplicate xs = concat [ [x, x] | x <- xs]
ziplike xs ys = if min (length xs) (length ys) > 0 then (head xs, head ys) : ziplike (tail xs) (tail ys) else []
splitAtIndex k l = (take k l, drop k l)
dropK k l = take k l ++ drop (k + 1) l
slice i k l = take (k - i) (drop i l)
insertElem x k l = take (k - 1) l ++ [x] ++ drop k l
rotate n l = drop n l ++ take n l
