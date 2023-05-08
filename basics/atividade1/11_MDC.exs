{x, _} = IO.gets("X: ") |> Integer.parse
{y, _} = IO.gets("Y: ") |> Integer.parse

defmodule GCD do
    def gcd(a, 0), do: a
    def gcd(a, b), do: gcd(b, rem(a, b))
end

IO.puts "MDC entre #{to_string(x)} e #{to_string(y)}: #{(GCD.gcd(x, y)) |> to_string}"
