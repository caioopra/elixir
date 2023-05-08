defmodule Euclidian do
    def dist(x1, y1, z1, x2, y2, z2) do
        :math.sqrt((x1-x2)**2 + (y1-y2)**2 + (z1-z2)**2) 
    end
end

string1 = IO.gets("Ponto 1: ")
# convert string input, spliting into integers
[x1, y1, z1] = 
    String.replace(string1, "\n", " ") |> String.split |> Enum.map(&String.to_integer/1)

string2 = IO.gets("Ponto 2: ")
[x2, y2, z2] = 
    String.replace(string2, "\n", " ") |> String.split |> Enum.map(&String.to_integer/1)

IO.puts "Euclidian distance: " <> (Euclidian.dist(x1, y1, z1, x2, y2, z2) |> to_string)
