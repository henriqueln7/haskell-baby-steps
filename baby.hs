doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 
                        then x 
                        else x*2;

myReplicate x y = take x (repeat y)
boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x]
-- length' xs = sum [1 | _ <- xs] Definido mais abaixo com recursão
removeUppercase string = [s | s <- string, not (s `elem` ['A'..'Z'])]
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int;
addThree x y z = x + y + z;

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN";
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> [Char]
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe 4 = "Four"
sayMe 5 = "Five"
sayMe x = "Not between 1 and 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * (factorial (n - 1))

charName :: Char -> [Char]
charName 'a' = "Albert"
charName 'b' = "Beto Carreira"
charName 'c' = "Cecil"
-- Non-exhaustive patterns in function charName

addVectors :: (Integral a) => (a, a) -> (a, a) -> (a, a)
-- addVectors a b = (fst(a) + fst(b), snd(a) + snd(b))
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

head' :: [a] -> a
head' [] = error "Can't call head on an empty list!!!!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "Empty list"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is too long. The first to elements are " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs