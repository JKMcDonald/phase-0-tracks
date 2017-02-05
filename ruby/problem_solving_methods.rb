#method takes an array of integers and an integer to search for. Method should return index of item. or nil if not present.


# arr = [3, 24, 33, 37, 99, 17, 42, 26]



# def search_array(input_array, x)
# #input_array.each do |integer|
# 	while input_array.length > 0
# 	if input_array.last == x
# 		p ((input_array.length) -1)
# 	else

# 	end
# 	input_array.delete(input_array.last)

# 	end	
# end	


# p search_array(arr, 3)

# search for the integer in variable x, upon locating the integer, chop the remaining indeces after the integer and call a .length on the array. returning the .length - 1 for the index. 
# if input_array.last == x
#p ((input_array.length) -1)

# Inputs x number of indeces for the array, also follows the formula of fibonacci which is the previous index + the current = the new



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

#pseudocoding bubble sort: start by defining a method with an array as the parameter
#then assigning a variable to the length of the array so we know how many times we need to swap
#next we will define a loop where we start with a false value that needs to be proven true to end the loop
#subtract 1 from the length of the array and thats how many times you do the loop or until swapped equals true
#If the item your on is larger than the next item swap them and return true
#continue to do that until the item does not need to be swapped
#print the array after all swaps are complete. 

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


p bubble_sort(array)