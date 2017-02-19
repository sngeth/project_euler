require "minitest/autorun"
require "prime"

# By listing the first six prime number: 2, 3, 5, 7, 11, 13 we can see that the 6th prime is 13
# What is the 10 001st prime number?

class ProjectEulerTests < Minitest::Test
  def find_nth_prime_number(num)
    Prime.take(num).last
  end

  def test_nth_prime_number
    assert_equal 13, find_nth_prime_number(6)
    assert_equal 104743, find_nth_prime_number(10001)
  end
end
