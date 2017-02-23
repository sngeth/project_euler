require "minitest/autorun"

class ProjectEulerTests < Minitest::Test

  def pythagorean_triplet_product
    product = 0

    1.upto(1000) do |a|
      (a+1).upto(1000) do |b|
        c = 1000 - a - b
        if (a*a + b*b == c*c)
          product = a*b*c
          break
        end
      end
      break if product > 0
    end

    product
  end

  def test_pythagorean_triplet_product
    assert_equal 31875000, pythagorean_triplet_product
  end
end
