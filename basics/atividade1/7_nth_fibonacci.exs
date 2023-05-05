{n, _} = IO.gets("Number: ") |> Integer.parse

defmodule Fibonacci do
    def fibonacci(0), do: 0
    def fibonacci(1), do: 1
    def fibonacci(n), do: fibonacci(n-1) + fibonacci(n-2)
end

IO.puts "Fibonacci: " <> (Fibonacci.fibonacci(n) |> to_string)
