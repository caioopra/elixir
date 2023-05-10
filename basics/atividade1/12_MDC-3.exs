defmodule GCD do
    def gcd(a, b, c), do: gcd_p(gcd_p(a, b, b), c, c)

    defp gcd_p(a, b, c) do 
        if (rem(a, c) == 0 && rem(b, c) == 0) do
            c
        else
            gcd_p(a, b, c - 1)
        end
    end
end

{x, _} = IO.gets("X: ") |> Integer.parse()
{y, _} = IO.gets("Y: ") |> Integer.parse()
{z, _} = IO.gets("Z: ") |> Integer.parse()

IO.puts "MDC entre #{x}, #{y}, #{z} = #{GCD.gcd(x, y, z) |> to_string}"