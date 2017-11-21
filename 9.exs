defmodule ProjectEuler.Problem9 do
  @moduledoc """
  Problem 9: Special Pythagorean triplet

  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
  a^2 + b^2 = c^2

  For example, 3^2 + 4^2 = 9 + 16 = 25 = 52.
  There exists exactly one Pythagorean triplet for which a + b + c = 1000.

  Find the product abc.
  """

  @limit 500

  def solve do
    Enum.at(list(), 0)
  end

  def list do
    for a <- 1..@limit,
      b <- a..@limit,
      c = 1000 - a - b,
      a*a + b*b == c*c,
      do: a*b*c
  end
end

{time, solution} = :timer.tc(fn -> ProjectEuler.Problem9.solve end)
IO.inspect solution # 31875000
IO.puts "#{time / 1000} ms"
