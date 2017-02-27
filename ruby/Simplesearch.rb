array = [1, 23, 55, 332, 12, 6, 2, 77, 5]

def search_array(array, x)
	index = 0
	until index == array.length
	array.each do |number|
		if number == x
			return index
		end
	index += 1
end
end
end

p search_array(array, 11)

# Fibonacci --------------------------------------------------------------------------------------------------------------------------------------

	def fib(x)
 a = 0
 b = 1
  fib_array = []
  x.times do
    fib_array << a 
    a, b = b, a+b
  end 
  fib_array
end

p fib(6)

# Bubble Sort ------------------------------------------------------------------------------------------------------------------------------------
#Pseudo-code the paremeter of the method is an array
# set the number equal to the array length
# Start a loop that iterates through the indeces until it swaps each of them
# Keep swapping until you cant anymore and then break the loop and end the program

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end
  array
end

array = [10, 3, 2, 1, 4, 5, 6, 8, 7, 9]