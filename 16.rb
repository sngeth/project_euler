require "minitest/autorun"

# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?

class ProjectEulerTests < Minitest::Test
  def power_digit_sum
    (2**1000).to_s.chars.map(&:to_i).reduce(:+)
  end

  def test_power_digit_sum
    assert 1366, power_digit_sum
  end
end
