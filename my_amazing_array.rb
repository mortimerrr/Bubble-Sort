require 'pry'

class Array
  # Examine each pair in myself and swap them until all my
  # elements are in order
  #
  def bubble_sort
  	puts
  	puts self.join(",")
    binding.pry
  end
end