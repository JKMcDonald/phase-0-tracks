#method takes an array of integers and an integer to search for. Method should return index of item. or nil if not present.


arr = [3, 24, 33, 37, 99, 17, 42, 26]



def search_array(input_array, x)
#input_array.each do |integer|
	while input_array.length > 0
	if input_array.last == x
		p ((input_array.length) -1)
	else

	end
	input_array.delete(input_array.last)

	end	
end	


p search_array(arr, 3)

# search for the integer in variable x, upon locating the integer, chop the remaining indeces after the integer and call a .length on the array. returning the .length - 1 for the index. 
# if input_array.last == x
#p ((input_array.length) -1)
