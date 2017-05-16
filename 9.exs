ExUnit.start

defmodule AssertionTest do
  use ExUnit.Case, async: true

  def pythagorean_triplet_product(n) when n > 0 do
    for a <- 1..n-2,
        b <- a-1..n-1,
        c <- b+1..n,
        a + b + c == n,
        a*a + b*b == c*c,
        do: {a, b, c} |> Tuple.to_list |> List.foldl(1, fn(x, prod) -> x*prod end)
  end

  test "pythagorean triplet product" do
    assert 31875000 == pythagorean_triplet_product(1000) |> List.first
  end
end
