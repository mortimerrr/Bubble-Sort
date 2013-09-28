require 'test/unit'
require 'pry'
require_relative 'my_amazing_array'

class MyAmazingTest < Test::Unit::TestCase

  def test_bubble_sort
    sorted = [13, 4, 3, 20, 11, 14, 16, 19, 12, 2, 9, 5, 6, 8, 17, 1, 10, 7, 18, 15].bubble_sort
    assert_equal (1..20).to_a, sorted
  end

end