-- Digamos que você está construindo um compilador e você precisa implementar a função que verifica se todas as chaves que forem abertas 
-- durante o código foram fechadas antes da finalização dele, e que elas foram fechadas na ordem certa. O conjunto de chaves `{{}` não é 
-- correto pois está faltando um }, já o conjunto '{}{' também não está uma vez que tem um { sem ser fechado. 

isClosed :: String -> Bool
isClosed [] = True
isClosed [_] = False
isClosed x = isClosedAux x []

isClosedAux :: String -> String -> Bool
isClosedAux [] out = null out
isClosedAux (x:xs) out
                | x == '{' = isClosedAux xs (x:out)
                | otherwise = isClosedAux xs (take (length (x:xs) - 1) out)

resultadoBonito :: String -> String
resultadoBonito st
        | isClosed st = "O programa " ++ st ++ " eh valido"
        | otherwise = "O programa " ++ st ++" nao eh valido"

main :: IO()
main = do
    st <- getLine
    print (resultadoBonito st)