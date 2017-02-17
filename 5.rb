require "minitest/autorun"

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class ProjectEulerTests < Minitest::Test
  def least_common_multiple(max)
    lcm = 1
    (1..max).each { |i| lcm *= (i / gcd(lcm, i)) }

    lcm
  end

  def gcd(a, b)
    while b > 0
      a %= b
      return b if a == 0
      b %= a
    end

    a
  end

  def test_least_common_multiple
    assert_equal 2520, least_common_multiple(10)
    assert_equal 232792560, least_common_multiple(20)
  end
end
