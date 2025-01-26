ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask (prompt ++ "!")  -- 当用户按 Enter，不输入内容时，递归调用并增加一个感叹号
    else if line == "quit"
            then putStrLn "quitting..."
            else do
                putStrLn ("you said: " ++ reverse line)
                ask prompt

main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt