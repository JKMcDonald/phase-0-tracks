#defining a new_list method 
#add item to the quantity 


	new_list = {}


#define a new method that adds items to a list
def add(list, item_name, quantity)
	list[item_name] = quantity
	list
end

#p new_list("carrot", 0)
add(new_list, "apples", 3)
add(new_list, :bananas, 4)
add(new_list, :peach, 8)

p new_list

#define a new method that updates an item to a list 
def update(list, item, quantity)
	list[item] = quantity
	list
end 

p update(new_list, :apples, 4)

#define a new method that removes item from a list 
def remove(list, item)
	list.delete(item)
	list
end

p remove(new_list, :apples)

def print_all(list)
	list.each {|key, value| puts "We want #{value} #{key}!" }
end 

print_all(new_list)



answer = nil 
new_list = {}

until answer == "stop"
	puts "What do you want to do with list?(add/remove/update) "
		decision = gets.chomp
		if decision == "add"
			puts "What do you want to add to the list?"
			item = gets.chomp
			puts "How many would you like?"
			quantity = gets.chomp.to_i
			p add(new_list, item, quantity)
		elsif decision == "remove"
			puts "What do you want to remove?"
			item = gets.chomp
			p remove(new_list, item) 
		elsif decision == "update"
			puts "What do you want to update?"
			item = gets.chomp 
			puts "How many would you like to update?"
			quantity = gets.chomp.to_i
			p update(new_list, item, quantity)
		else 
			puts "I didn't understand you."
		end 
	puts "If this is your last item say 'stop'! Otherwise, say 'continue'." 
	answer = gets.chomp 
end 

p new_list
=begin
1. I learned about writing out everything you need to do and breaking it into individual jobs then combinging it all back together at the end through pseudocode
2. The tradeoffs are that a hash will allow you to use multiple data types in your data structure but it is more complicated to access and has different methods than array
3. A method returns the value of the hash
4. You can pass global scope variables, other methods, data structures, strings, integers, etc. almost any data type can be an argument.
5. You can pass information between methods by calling methods within the scope of the method and applying the parameters.
6. The concepts of setting up a UI were solidified. I still am a little confused on how to iterate a hash. 
	
 	
=end

