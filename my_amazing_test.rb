require 'test/unit'
require 'pry'
require_relative 'my_amazing_array'

class MyAmazingTest < Test::Unit::TestCase

  def test_sum
    assert_equal 15, (1..5).to_a.sum
    assert_equal 500000500000, (1..1000000).to_a.sum
  end

  def test_primes
    assert_equal [2, 3, 5, 7], (1..10).to_a.primes
    assert_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97], (1..100).to_a.primes
  end

  def test_bubble_sort
    sorted = [13, 4, 3, 20, 11, 14, 16, 19, 12, 2, 9, 5, 6, 8, 17, 1, 10, 7, 18, 15].bubble_sort
    assert_equal (1..20).to_a, sorted
  end

end