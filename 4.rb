require "minitest/autorun"

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

class TestMeme < Minitest::Test
  def largest_palindrome_number(min=10, max=99)
    max_palindrome = 0

    (min..(max+1)).each do |a|
      ((a+1)..(max+1)).each do |b|
        prod = a * b
        max_palindrome = prod if prod > max_palindrome and is_palindrome(prod)
      end
    end

    max_palindrome
  end

  def is_palindrome(num)
    num.to_s == num.to_s.reverse
  end

  def test_largest_palindrome_number
    assert_equal 9009, largest_palindrome_number(10, 99)
    assert_equal 906609, largest_palindrome_number(100, 999)
  end
end
