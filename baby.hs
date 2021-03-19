doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 
                        then x 
                        else x*2;

myReplicate x y = take x (repeat y)
boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x]
length' xs = sum [1 | _ <- xs]
removeUppercase string = [s | s <- string, not (s `elem` ['A'..'Z'])]
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int;
addThree x y z = x + y + z;