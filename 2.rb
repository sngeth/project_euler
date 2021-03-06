# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

class Fibo
  class << self
    include Enumerable

    def each
      return to_enum unless block_given?
      a = 0
      b = 1
      loop do
        a, b = b, a + b
        yield a
      end
    end
  end
end

require 'benchmark'

time = Benchmark.realtime do
  puts Fibo.take_while { |i| i < 4_000_000 }
    .select(&:even?)
    .inject(:+)
end

puts time.real
