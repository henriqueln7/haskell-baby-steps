-- Ana gosta muito de correr e pedalar e ela sempre faz auto avaliações do seu desenvolvimento durante essas atividades. Os limites de Ana correndo são de 10km e pedalando de 24km, se ela ultrapassa esses limites ela considera o desempenho "Desempenho excelente", se executa entre 5km e 10km correndo ou entre 15km e 24km pedalando os considera "Desempenho medio", caso seja abaixo ela os considera "Baixo desempenho". Mas se em qualquer distância ela ultrapassar 12km/h correndo ou 20km/h pedalando ela já considera "Desempenho excelente".

-- Escreva um programa que recebe de Ana a atividade executada (1 - correr, 2 - pedalar), quantos km foram executados e em qual quantidade de horas.

avaliador :: Int -> Float -> Float -> String
avaliador 1 km t 
    | km / t > 12 || km > 10 = "Desempenho excelente"
    | km >= 5 = "Desempenho medio"
    | otherwise = "Baixo desempenho"
avaliador 2 km t 
    | km / t > 20 || km > 24 = "Desempenho excelente"
    | km >= 15 = "Desempenho medio"
    | otherwise = "Baixo desempenho"
avaliador numAtividade km t = error ("Número de atividade inválido")

main :: IO()
main = do
    numAtividade <- getLine
    km <- getLine
    tempo <- getLine
    let avaliacao = avaliador (read numAtividade) (read km) (read tempo)
    print avaliacao

    
    