-- Uma organização de saúde sabe que a disseminação de uma determinada doença ocorre de uma forma simples: uma pessoa contaminada transmite a doença para outras 2 num intervalo de 3 dias, havendo agora 3 pessoas infectadas, que continuam o ciclo a partir deste número.

-- Sabendo disso, a organização quer calcular, de forma aproximada, o número de dias que uma população de tamanho X seria totalmente contaminada a partir de um número inical de pessoas doentes Y.

-- Ex: Duas pessoas doentes (Y = 2) em uma população de cem pessoas (X = 100), contaminam esta população, em sua totalidade, em 12 dias.

dias :: Int -> Int -> Int
diasAux :: Int -> Int -> Int -> Int
dias y x = diasAux y x 0
diasAux y x diasDecorridos = if y >= x 
                                then diasDecorridos 
                                else diasAux (y + 2*y) x (diasDecorridos + 3)

main :: IO()
main = do
    doentes <- getLine
    populacao <- getLine
    let qntd_dias = dias (read doentes) (read populacao)
    print (show qntd_dias ++ " dias")