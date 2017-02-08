puts "how many employees will be processed?"
result = gets.chomp

number_of_employees = 0
until result.to_i == number_of_employees
puts "What is your name?"
name = gets.chomp
puts "What age do you turn this year?"
age = gets.chomp
puts "What year were you born?"
year = gets.chomp
puts "would you like some garlic bread from the cafateria?"
answer = gets.chomp
puts "would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

desired_result = "done"
indicator = "sunshine"
allergy = ""
puts "please list all allergies, one at a time... type 'done' when done"
until allergy == (desired_result || indicator)
puts "*"
allergy = gets.chomp
end

if 
	age.to_i == (2017-year.to_i) && answer == "yes" 
	puts "Probably not a vampire"
elsif 
	name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire"
elsif 
	age.to_i != (2017-year.to_i) && (answer != "yes" && health_insurance == "no") 
	puts "Almost Certainly a vampire"
elsif 
	allergy == indicator || age.to_i != (2017-year.to_i) && answer != "yes" || health_insurance == "no"
	puts "probably a vampire"
else
	puts "Result inconclusive."
end
number_of_employees += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

