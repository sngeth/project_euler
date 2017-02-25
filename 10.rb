require "minitest/autorun"
require 'prime'

class ProjectEulerTests < Minitest::Test

  def summation_of_primes
    Prime.each(2_000_000).inject(:+)
  end

  def test_summation_of_primes
    assert_equal 142913828922, summation_of_primes
  end
end
