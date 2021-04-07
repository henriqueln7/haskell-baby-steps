double :: Int -> Int
double x = 2 * x

main :: IO()
main = do 
    input <- getLine
    let num = double (read input)
    print num

roots :: Float -> Float -> Float -> [Float] -- Se possuir 1 raíz real, a lista possuirá 1 elemento. Se possuir 2 raízes reais, a lista possuirá 2 elementos. Caso não existam elementos reais, retorna uma lista vazia.
roots a b c 
    | delta > 0 = [(-b + sqrt(delta)) / (2 * a), (-b - sqrt(delta)) / (2 * a)]
    | delta == 0 = [-b / (2 * a)]
    | otherwise = []
    where delta = b^2 - 4 * a * c

ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo x = encontraDivisor x 2 == x

encontraDivisor :: Int -> Int -> Int -- Retorna o menor divisor de x a partir do divisor y
encontraDivisor x y = if divide x y then y else encontraDivisor x (y + 1)

divide :: Int -> Int -> Bool
divide x y = mod x y == 0


-- Fazer a função de conversão de decimal para binário