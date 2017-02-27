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
	:children => children.to_i,
	:decor_theme => decor_theme,
	:baths => baths.to_i,
	:discount => discount
}




# interior_decor = {
# 	:name => "Kyle",
# 	:age => 28,
# 	:children => 0,
# 	:decor_theme => "50's",
# 	:baths => 2,
# 	:discount => "yes"
# }

puts "would you like to make any changes? (yes/no)" 
interior_decor.each do |key, value| 
puts "your current #{key} is: #{value}"
end
change = gets.chomp

if change == "yes"
	puts "Which section would you like to change?"
		interior_decor.each do |key, value| 
 		puts "your current #{key} is: #{value}"
		end
	section = gets.chomp
	puts "what would you like to update #{section} to?"
	update = gets.chomp

	number_sections = ['age', 'children', 'baths', 'budget', 'happinss_scale']
 	
 	if number_sections.include?(section)
 		update = update.to_i
 	end 
 	interior_decor[section.to_sym] = update
end

#https://www.codeschool.com/courses/try-ruby
puts "your current decor theme is:"
interior_decor.each do |key, value| 
puts "#{key} is: #{value}"
end

#... some code to iterate over the hash

# look into using Hash#each

# Your current decor theme is:
# name - Kyle
# age - 28
# children - 0
# decor_theme - 50's
# baths - 2
# discount - yes
CHECKS OUT


