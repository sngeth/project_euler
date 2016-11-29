# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def prime_factors(n)
  factors = []
  d = 2
  while n > 1
    while n % d == 0
      factors << d
      n /= d
    end
    d = d + 1
    if d*d > n
      if n > 1
        factors << n
        break
      end
    end
  end
  return factors
end

require 'benchmark'

time = Benchmark.realtime {
  puts prime_factors(600851475143).max
}

puts time.real
