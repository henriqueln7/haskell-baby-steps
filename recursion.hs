maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

-- maximum' [1..5] => 1 > maxixum' [2..5]
    -- maxixum' [2..5] => 2 > maximum' [3..5]
        -- maximum' [3..5] => 3 > maximum' [4..5]
            -- maximum' [4..5] => 4 > maximum' [5]
                -- maximum' [5] = 5
            -- maximum' [4..5] => 5
        -- maximum' [3..5] = 5
    -- maximum' [2..5] = 5
-- maximum' [1..5] = 5

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x : replicate' (n-1) x 

-- take 3 [5, 4, 3, 2, 1] == [5,4,3]
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

-- reverse [1..5] == [5,4,3,2,1]
reverse' :: (Ord a) => [a] -> [a]
reverse' [] = []
reverse' xs = last xs : reverse' (take (length xs - 1) xs)
-- Solução do livro: reverse' (x:xs) = reverse' xs ++ [x]

-- repeat 3 == [3,3,3,3,3......]
repeat' :: a -> [a]
repeat' x = x : repeat' x

-- zip [1,2,3] [3,2,1] == [(1,3),(2,2),(3,1)]
zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys

-- elem 3 [1,2,3] == True
-- elem 5 [1,2,3] == False
elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise = elem' a xs

-- [1] ++ [2] == [1,2]
concat' :: [a] -> [a] -> [a]
concat' [] ys = ys
concat' xs ys = concat' (take (length xs - 1) xs) ((last xs) : ys)
