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
    primes = []
    self.each do |x|

      if x == 1
        next
      end

      if x == 2
        primes.push(x)
        next
      end

      prime = true

      primes.each do |p| 
        if x > 2 && x % p == 0
          prime = false   
        end
      end  

      if prime == true
        primes.push(x)
      end

    end  
    primes

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

