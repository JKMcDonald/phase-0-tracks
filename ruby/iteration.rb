# def blocks
# 	puts "Hello there!"
# 3.times	{yield("Alex", "Steve")}
# end


# 	blocks { |name1, name2| puts "Hello back! from #{name1} and #{name2}"}

# 	p blocks


	## ----------------------------------------------------------------------------------------

	array = [1, 23, 454, 23, 213, 64, 5, 8, 9, 5, 6]

	hash = {:name => "Kyle", age: 28, school: "Dev Bootcamp", hair: "brown", }

new_hash = {}
	new_hash = hash.map do |key, value|
							new_hash[key] = value.to_s.upcase
						end
						p new_hash

def array(array)
new_array = array.each do |i|
	if i <= 5 
		array.delete(i)
	else 
		i
	end
new_array
end
end
p array(array)

array2 = [1, 23, 454, 23, 213, 64, 5, 8, 9, 5, 6]

def selector(array)
	new_array = array.select {|num| num < 10}
	new_array
end

p selector(array2)

array3 = [1, 23, 454, 23, 213, 64, 5, 8, 9, 5, 6]

def keepif(array)
	new_array = array.keep_if {|x| x > 9}
end

p  keepif(array3)

array4 = [1, 23, 454, 23, 213, 64, 5, 8, 9, 5, 6]

def deleteif(array)
	new_array = array.delete_if {|x| x > 23}
	new_array
end

p deleteif(array4)










	