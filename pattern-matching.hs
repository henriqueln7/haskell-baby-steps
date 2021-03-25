sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

product' :: (Num a) => [a] -> a
product' [] = 0
product' [x] = x
product' (x:xs) = x * product' xs

capital :: String -> String
capital "" = "Empty string, oops!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height 
    | bmi <= 18.5 = ":("
    | bmi <= 25 = ":D"
    | bmi <= 30 = ":'("
    | otherwise = "D:"
    where bmi = weight / height ^ 2

max' :: (Ord a) => a -> a -> a
max' a b 
    | a >= b = a
    | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
myCompare a b 
    | a > b = GT
    | a < b = LT
    | otherwise = EQ

initials :: String -> String -> String
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstName
          (l:_) = lastName

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2