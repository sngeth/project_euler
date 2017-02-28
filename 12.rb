require "minitest/autorun"
require 'prime'

class ProjectEulerTests < Minitest::Test
  MAX = 500

  # Formula for calculating number if divisors:
  # http://mathschallenge.net/index.php?section=faq&ref=number/number_of_divisors

  def highly_divisible_triangle_number
    triangle = current = 1

    until MAX < Prime.prime_division(triangle).inject(1) { |product, (_, factor) | product * (factor + 1) }
      current += 1
      triangle += current
    end

    triangle
  end

  def test_highly_divisible_triangle_number
    assert_equal 76576500, highly_divisible_triangle_number
  end
end
