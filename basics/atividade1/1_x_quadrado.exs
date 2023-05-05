{x, _} = IO.gets("Valor de x: ") |> Integer.parse 
# parse: retorna tupla com inteiro como primeiro elemento e o resto (não inteiro) como segundo
squared = fn (val) -> val*val end
IO.puts "x^2 = " <> (squared.(x) |> to_string)W