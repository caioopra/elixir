defmodule MMC do
    def auxMMC(a, b, c) do
        if rem(c, a) == 0 && rem(c, b) == 0 do
            c
        else 
            auxMMC(a, b, c+1)
        end
    end

    def mmc(a, b), do: auxMMC(a, b, 1)
end

{x, _} = IO.gets("X: ") |> Integer.parse
{y, _} = IO.gets("Y: ") |> Integer.parse

IO.puts "MMC entre #{x} e #{y}: #{MMC.mmc(x, y)}"
