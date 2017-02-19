require "minitest/autorun"

# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + .. + 10^2 = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and
# the square of the sum is 3025 - 385 = 2640
#
# Find the difference between the sum of the squares of the first one hundred natural numbers
# and the square of the sum

class ProjectEulerTests < Minitest::Test
  def difference_square_of_sum_and_sum_of_squares(num)
    sum_squares = (1..num).inject(0) { |sum, n| sum += n**2 }
    square_of_sum = (1..num).inject(:+)**2

    square_of_sum - sum_squares
  end

  def test_difference_square_of_sum_and_sum_of_squares
    assert_equal 2640, difference_square_of_sum_and_sum_of_squares(10)
    assert_equal 41230, difference_square_of_sum_and_sum_of_squares(20)
  end
end
