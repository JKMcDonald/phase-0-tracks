## gets.chomp a bunch of questions about the details of the client assigning them to variables as they are entered for later use
## convert any stored info the the appropriate data type
## print the hash to the screen once all the info has been entered
## Iterate through each hash and key printing the results asking if they would like to change, gets.chomp the change key
## if response is none skip question, otherwise reassign a value to whatever key they enter
## Print the latest version of the hash now assigned to a variable

application = {}
puts "What is your name?"
	name = gets.chomp
puts "What is your address?"
	address = gets.chomp
puts "What is your email?"
	email = gets.chomp
puts "What is your phone number?"
	number = gets.chomp.to_i
puts "What is your favorite shade of blue?"
	shade_of_blue = gets.chomp
puts "What is your favorite wall paper?"
	wallpaper = gets.chomp

application[:name] = name
application[:adress] = address
application[:email] = email
application[:number] = number
application[:shade_of_blue] = shade_of_blue
application[:wallapaper] = wallpaper

puts "Are all these values what you inteded?(if no type the key you wish to change, if yes type 'skip')"
application.each do |key, value|
		puts "Your #{key} is #{value}"
end
input = gets.chomp
if input == 'skip'
else
	puts "new #{input}:"
	value = gets.chomp
	application[input.to_sym] = value
	application.each do |key, value|
		puts "Your #{key} is #{value}"
	end
end

