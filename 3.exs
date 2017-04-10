defmodule LargestPrimeFactor do
  @spec for(pos_integer) :: [pos_integer]
  def for(number) do
    List.last(factorize(number, 2, []))
  end

  # Base case
  defp factorize(number, factor, prime_factors) when number < factor do
    prime_factors
  end

  # Two more cases to handle here in this implementation:
  # 1: When the number is evenly divisble by a factor, we need to repeatedly factor it until it's prime
  defp factorize(number, factor, prime_factors) when rem(number, factor) == 0 do
    [factor | factorize(div(number, factor), factor, prime_factors)]
  end

  # 2: We need to increase the dividing factor from 2..n until it's divisible by 2
  defp factorize(number, factor, prime_factors) do
    factorize(number, factor + 1, prime_factors)
  end
end

IO.inspect LargestPrimeFactor.for(600851475143)
