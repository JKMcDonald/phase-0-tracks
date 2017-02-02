=begin For an interior designer to get its clients information it will require a number of puts strings with a gets.chomp for the answers and then direction on what to do with that information once its gathered. return the info in a hash and ask at the end if there were any mistakes, use puts and gets.chomp to discover what section, then same format to replace and make sure to conditionally change the value to its proper data type
=end

puts "what is your name?"
name = gets.chomp
puts "what is your age?"
age = gets.chomp
puts "How many children do you have?"
children = gets.chomp
puts "What would you like to be the decor theme?"
decor_theme = gets.chomp
puts "how many baths would you like?"
baths = gets.chomp
puts "You want our discount for painting one room red?"
answer = gets.chomp

if answer == "yes"
	discount = true
else
	discount = false
end
interior_decor = {
	:name => name,
	:age => age.to_i,
	:children => children.to_i
	:decor_theme => decor_theme
	:baths => baths.to_i
	:discount => discount
}

puts "would you like to make any changes?" 