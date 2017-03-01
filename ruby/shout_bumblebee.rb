# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!!!" + ":)"
#   end
# end

# ## Driver Code --------------------------------------------------------------------------------------------------------------------------------

# p Shout.yell_angrily('hey')
# p Shout.yell_happily('hi')

module Shout
	def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
  	words + "!!!" + ":)"
  end
end

class Man
	include Shout
end

class Train_conductor
	include Shout
end

man = Man.new
puts man.yell_happily('Hello')

train_conductor = Train_conductor.new
puts train_conductor.yell_angrily('Stop')