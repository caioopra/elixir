defmodule GCD do
    def gcd(a, 0), do: a
    def gcd(a, b), do: gcd(b, rem(a, b))

    def verificarCoprimos(a, b) do
        if (gcd(a, b) == 1) do true else false end
    end
end

{x, _} = IO.gets("X: ") |> Integer.parse
{y, _} = IO.gets("Y: ") |> Integer.parse


IO.puts "São coprimos? #{if GCD.verificarCoprimos(x, y) do "Sim" else "Nao" end}"