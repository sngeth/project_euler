defmodule SmallestMultiple do
@moduledoc """

  Problem 5: Smallest multiple

  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  """
  def smallest(1), do: 1
  def smallest(2), do: 2

  def smallest(n) when n > 2 do
    next = smallest(n-1)
    case rem(next, n) do
      0 -> next
      _ -> next * div(n,gcd(next,n))
    end
  end

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))
end


IO.puts SmallestMultiple.smallest(20)
