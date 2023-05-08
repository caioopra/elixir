string1 = IO.gets("3 valores (a b c): ")

[x2, y2, z2] =
  String.replace(string1, "\n", " ") |> String.split() |> Enum.map(&String.to_integer/1)

greater = fn (a, b, c) ->
    if a > b do
        if a > c do a
        else c end
    else 
        if b > c do b
        else c end
    end
end

IO.puts "Greater between the three values: " <> (greater.(x2, y2, z2) |> to_string)
