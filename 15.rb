require "minitest/autorun"

class Integer
  def factorial
    (1..self).reduce(1, :*)
  end
end

class ProjectEulerTests < Minitest::Test
  def lattice_paths(rows, cols)
    puts (rows+cols).factorial / (rows.factorial * cols.factorial)
  end

  def test_lattice_paths
    assert 137846528820, lattice_paths(20, 20)
  end
end
