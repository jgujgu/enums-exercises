gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AllTest < Minitest::Test

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    assert all_zeros
  end

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    refute all_zeros
  end

  def test_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = words.all? {|x| x == "gone"}
    assert all_gone
  end

  def test_not_all_gone
    skip
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    all_gone = words.all? {|x| x == "gone"}
    refute all_gone
  end

  def test_all_empty
    strings = ["", "", "", "", "", "", ""]
    all_empty = strings.all? {|x| x == ""}
    assert all_empty
  end

  def test_not_all_empty
    strings = ["", "", "", "full", "", "", ""]
    all_empty = strings.all? {|x| x == ""}
    refute all_empty
  end

  def test_not_all_uppercase
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_caps = words.all? {|x| x.upcase == x}
    refute all_caps
  end

  def test_all_lies
    lies = [false, false, false, false]
    all_lies = lies.all? {|x| x == false}
    assert all_lies
  end

  def test_all_multiples_of_7
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of_7 = numbers.all? {|x| x%7 == 0}
    assert all_multiples_of_7
  end

  def test_not_all_3_digits_long
    skip
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    # Your code goes here
    refute all_3_digits
  end

  def test_all_4_letter_words
    skip
    words = ["love", "hate", "fire", "bird", "call"]
    # Your code goes here
    assert all_4_letters
  end

end
