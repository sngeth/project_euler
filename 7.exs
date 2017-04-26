defmodule Primes do
  def nth(count) do
    Stream.iterate(2, &next_prime/1)
    |> Enum.take(count)
    |> List.last
  end

  defp next_prime(num) do
    num = num + 1

    if factors_for(num) == [1, num] do
      num
    else
      next_prime(num)
    end
  end

  def factors_for(n) do
    (for i <- 1..div(n, 2), rem(n, i) == 0, do: i) ++ [n]
  end
end

IO.inspect Primes.nth(10_001)
