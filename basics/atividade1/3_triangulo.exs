{base, _} = IO.gets("Base: ") |> Integer.parse
{altura, _} = IO.gets("Altura: ") |> Integer.parse
area = fn (x, y) -> (x * y) / 2 end 
IO.puts "Area: " <> (area.(base, altura) |> to_string)
