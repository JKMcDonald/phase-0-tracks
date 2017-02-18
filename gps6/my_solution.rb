# require_relative is requiring a file that starts in the same directory as the file you are coding in. require is the same but it starts looking in other predefined directories
# require_relative does not change its behavior whereever you are and require does
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#calls instance method's speed_of_spread and  predicted_deaths and returns speed_of_spread

  def virus_effects
    predicted_deaths
    speed_of_spread(@population_density, @state)
  end

  private

# passing population density, population, and state as parameters into a conditional if statement thereby determining how many deaths 
# a state will incurr in a given outbreak. then printing a string and returning nil

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# takes in parameters of population density and state and prints the string of how fast it will spread in months based on if conditianl results

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value|
  full_report = VirusPredictor.new(key, value[:population_density], value[:population] )
  full_report.virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
#REFLECTION
 
# The differences between the two different hash syntaxes shown in the state_data file is one uses "" and  => and the other uses : to define a key
# Rewuire relative starts searching in the current directory you are in whereas require starts elsewhere, usually assigned by the coder
# You can iterate through a hash with a loop or .each method, also .map, .map! and other enumarable methods.
# When refactoring virus_effects the variables seemed repetative 
# I most solidified the features of a Constant Variable. 














 Reflection Section