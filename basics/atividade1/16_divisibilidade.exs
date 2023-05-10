defmodule Div do
    def divisivel(x, y) do
        if rem(x, y) == 0 do "Divisivel" else "Não divisivel" end
    end
end

IO.puts "Divisibilidade entre 5 e 3: #{Div.divisivel(5, 3)}"

