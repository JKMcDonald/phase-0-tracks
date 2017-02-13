continue = ""
until continue == "done"
puts "type anything to continue or done to exit (if select done complete one more calculation to exit)"
    continue = gets.chomp
puts "What would you like your first variable's value to be?"
    x = gets.chomp.to_i
puts "What would you like your operation to be (+,-,*,/)"
    operator = gets.chomp
puts "What would you like your final variable's value to be?"
    z = gets.chomp.to_i
def calculate(x, operator, z)
	if operator == "+"
		return x + z
	elsif operator == "-"
		return x - z
	elsif operator == "*"
		return x * z
	elsif operator == "/"
		return x / z
	else
		puts "error: Please eneter a valid integer and/or operation after the questions: Please try again, thank you."
	end
end
puts "your solution is:"
p calculate(x, operator, z)
# metho = calculate(x, operator, z)
# solution = []
# metho.map { |answer| solution << answer }


end
# p solution.length
# p solution