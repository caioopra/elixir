{x, _} = IO.gets("Valor de X: ") |> Integer.parse
modulo = fn (y) -> if y < 0 do -y else y end end
IO.puts "Modulo de x: " <> (modulo.(x) |> to_string)
