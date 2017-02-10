# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " :)"
#   end
# end

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end

class Angry_man
	include Shout
end

class Teacher
	include Shout
end

angry_man = Angry_man.new
puts "Hey! I said #{angry_man.yell_angrily("Stop")}"

teacher = Teacher.new
puts "#{teacher.yelling_happily("Wohoo")}, it worked!"



