--create inpFunc

inpFunc a b = [a..b] 

--Define applicatorFunc

applicatorFunc inpFunc s 
    | s=='s' = fromIntegral (sum inpFunc) 
    | s=='a' = fromIntegral(sum inpFunc)/fromIntegral(length inpFunc)  

main = do
    let a = 3
    let b = 7
    let range = inpFunc a b
    let resultSum = applicatorFunc range 's' 
    let resultAvg = applicatorFunc range 'a' 
    putStrLn("sum = " ++ show(resultSum))
    putStrLn ("Average = " ++ show resultAvg)