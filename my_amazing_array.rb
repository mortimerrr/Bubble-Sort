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
    self.each_with_index do |number, index|
      if number < 2
        self.delete(number)
      elsif number > 2 && (number % 2 == 0) # 2 is a prime number
        self.delete(number)
      else 
        elements_to_check = self[0..index-1]
        binding.pry
        elements_to_check.each do |n|
          if number > 2 && (number % n == 0)   
            self.delete(number)
          end
        end
      end
      # return the new/modified array
      self
    end      

  end

  # Examine each pair in myself and swap them until all my elements are in order
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
        else             
          # otherwise move on
          x += 1    
          y += 1
        end 
        # puts self.join(",")
      end
        # puts "we've reached the end of the array"
    end
    return self
  end
end

