defmodule BooleanOps do
    def andF(x, y) do
        (convertion(x) && convertion(y))
    end

    def orF(x, y) do
        (convertion(x) || convertion(y))
    end

    def notF(x) do
        (!convertion(x))
    end

    defp convertion("true"), do: true
    defp convertion("false"), do: false
end

returnVal = BooleanOps.andF("false", "true") |> to_string
returnVal2 = BooleanOps.andF("true", "true") |> to_string
IO.puts "x and y: " <> returnVal
IO.puts "x and y: " <> returnVal2

IO.puts "true or false: " <> (BooleanOps.orF("true", "false") |> to_string)

IO.puts "not true: " <> (BooleanOps.notF("true") |> to_string)