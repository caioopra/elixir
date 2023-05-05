{a, _} = IO.gets("Nota 1: ") |> Integer.parse
{b, _} = IO.gets("Nota 2: ") |> Integer.parse
{c, _} = IO.gets("Nota 3: ") |> Integer.parse

defmodule Aprovacao do
    defp media(a, b, c) do
        (a + b + c) /3
    end

    def aprovacao(a, b, c) do
        if (media(a, b, c) >=6) do "Aprovado" else "Reprovado" end
    end
end

IO.puts "Foi aprovado? " <> Aprovacao.aprovacao(a, b, c)
