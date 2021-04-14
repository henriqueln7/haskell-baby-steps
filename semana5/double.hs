double :: Int -> Int
double x = 2 * x

main :: IO()

main = do
    value <- getLine
    let x = double (read value)
    print x