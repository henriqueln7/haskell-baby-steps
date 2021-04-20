-- Colocar n espaços no lado esquerdo de uma string.
-- Ex: toTheLeft 3 "Hello" == "   Hello"
toTheLeft :: Int -> String -> String

toTheLeft n st = createSpaces n ++ st

createSpaces :: Int -> String
createSpaces 0 =  ""
createSpaces n = " " ++ createSpaces (n - 1)