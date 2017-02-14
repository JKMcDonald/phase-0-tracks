continue = ""
solutions = {}

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

until continue == "done"
puts "type anything to continue or done to exit (if select done complete one more calculation to exit)"
    continue = gets.chomp
puts "What would you like your equation to be?"
 equation = gets.chomp

 string_array = equation.split(" ")

 x = string_array[0].to_i
 operator = string_array[1]
 z = string_array[2].to_i

 p calculate(x, operator, z)

 solutions.store(equation, calculate(x, operator, z))

end
 	puts "your solution is:"
	solutions.each do |equals, solution|
		puts "#{equals} = #{solution}"
# metho = calculate(x, operator, z)
# solution = []
# metho.map { |answer| solution << answer }


end
# p solution.length
# p solution