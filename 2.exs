require Integer

defmodule Fibo do
  def solve do
    fibs = Stream.unfold({0, 1}, fn {a, b} ->
      {a, {b, a + b}}
    end)

    fibs
    |> Enum.take_while(&(&1 < 4_000_000))
    |> Enum.filter(&Integer.is_even/1)
    |> Enum.sum
  end
end

IO.inspect Fibo.solve # 4613732
