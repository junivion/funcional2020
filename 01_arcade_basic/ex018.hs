frequencia:: Int -> [Int] -> Int
frequencia num lista
    |lista == [] = 0
    |head lista == num = 1 + frequencia num (tail lista) --soma1 caso a cabeça seja igual num e chama recursivamente a cauda
    |otherwise = frequencia num (tail lista) --chama recursivamente a cauda sem somar

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia a b