require 'pry'

class Array
  
  # Calculate the total sum of all the elements in this array (assuming they are numeric)
  def sum
    # puts self.join(",")
    sum = 0
    self.each do |number|
      sum += number
    end
    sum
  end

  # Returns the prime numbers in this array
  def primes
    # remove any number smaller than 2 from the array (1 is not a prime number)
    # remove all the even numbers from the array (even numbers are not primes)
    # iterate through each number (that is left in the array) and try to divide it with all
    # the preceding numbers in the array (use the modulo)
    # if the remainder is 0 in all cases that is a prime number
    # if there is a case where the remainder is not 0, remove that number from the array
    # return the new/modified array

    self.each do |x|
      
    end


  end

  # Examine each pair in myself and swap them until all my
  # elements are in order
  #
  def bubble_sort
    stack = []
    x = 0
    y = 1
    number_of_swaps = 1

    while number_of_swaps > 0

      number_of_swaps = 0
      x = 0
      y = 1

      while x < (self.length - 1)  # run the below code until you reach the end of the array
        
        if self[x] > self[y]
          # I need to swap the two numbers
          stack.push(self[x], self[y])
          self[x] = stack.pop
          self[y] = stack.pop
          x += 1
          y += 1
          number_of_swaps += 1  
        else                  # THIS IS NOT NEEDED / AVOID REPEATING LINES 50/51 AND 55/56!!!
          # otherwise move on
          x += 1    # PUT THESE OUTSIDE OF THE LOOP!!!
          y += 1
        end 
        # puts self.join(",")
      end
        # puts "we've reached the end of the array"
    end
    return self
  end
end

