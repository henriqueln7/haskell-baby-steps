lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!!!"
lucky x = "You're out of luck, pal!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Betinho"
charName _ = "OXeee"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

head' :: [a] -> a
head' [] = error("Empty list")
head' (x:_) = x

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weigth heigth 
    | bmi <= 18.5 = ":'("
    | bmi <= 25.0 = ":D"
    | bmi <= 30.0 = ":'("
    | otherwise = "D:"
    where bmi = weigth / heigth ^ 2

max' :: (Ord a) => a -> a -> a
max' a b
    | a > b = a
    | otherwise = b

initials :: String -> String -> String
initials firstName lastName = [f] ++ "." ++ [l] ++ "."
                    where (f:_) = firstName
                          (l:_) = lastName  

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
        where bmi w h = w / h ^ 2

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

calcBmis' :: (RealFloat a) => [(a, a)] -> [a]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]