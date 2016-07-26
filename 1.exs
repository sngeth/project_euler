#If we list all natural numbers below 10 that are multiples of 3 or 5, we get 3, 5,6, and 9
#The sum of these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000
defmodule MyMath do
  def get_multiples_of_3_and_5(num, accumulator) when num < 1, do: IO.puts accumulator

  def get_multiples_of_3_and_5(num, accumulator) do
    if rem(num, 3) == 0 || rem(num, 5) == 0, do: get_multiples_of_3_and_5(num-1, accumulator+num),
    else: get_multiples_of_3_and_5(num-1, accumulator)
  end
end

IO.puts MyMath.get_multiples_of_3_and_5(999,0)
