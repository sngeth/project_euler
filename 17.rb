require "minitest/autorun"
# If the numberse 1 to 5 are written out in words: one, two three four five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total

# If all the numbers from to 1 to 1000 (one thousand) inclusive were written
# out in words, how many letters would be used

WORDS = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety"
}.freeze

class Fixnum
  def to_english
    str = ""

    if self >= 100
      str = "#{WORDS[(self / 100)]}hundred"
      if self % 100 > 0
        str = "#{str}and#{(self % 100).to_english}"
      end
    elsif self > 20
      str = '#{WORDS[(self / 10) * 10]}#{WORDS[ self % 10 ]}'
    elsif self == 1000
      str = 'onethousand'
    else
      str = WORDS[self]
    end
    str
  end
end

class ProjectEulerTests < Minitest::Test
  def sum_of_word_lengths
    total = 0

    (1..1000).each do |i|
      total += i.to_english.length
    end
    total
  end

  def test_sum_of_word_lengths
    assert 21124, sum_of_word_lengths
  end
end
