# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative is when you require a file that is within the same dir as the current dir you're working within.
# Require is a way to take advantage of built in Ruby libraries.



# require_relative 'state_data'

class VirusPredictor
attr_accessor :population_density, :population, :state 
  
  
# Initialize creates the instance variables for the instance of the class.
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Passing instance variables to method.  When virus_effects is called, you'll get predicted_deaths and speed_of_spread.
  
  def virus_effects
    predicted_deaths(:population_density)
    speed_of_spread(:population_density)
  end

  private
  #Sets the default visibility to private

# Below is a method that takes three arguments runs an if statement and returns a value that predicts deaths and print a sentence. 
    
  def predicted_deaths(population_density)
    # predicted deaths is solely based on population density
    
    pop = @population_density
    case pop 
    when pop >= 200 
      number_of_deaths = (@population * 0.4).floor
    when pop >= 150 
      number_of_deaths = (@population * 0.3).floor
    when pop >= 100 
      number_of_deaths = (@population * 0.2).floor
    when pop >= 50 
      number_of_deaths = (@population * 0.1).floor  
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# This method uses and if/else statement to calculate how fast the virus will spread based off pop density.  Also puts a sentence.    
  
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    pop = @population_density
    case pop 
    when pop >= 200 
      speed += 0.5
    when pop >= 150 
      speed += 1
    when pop >= 100 
      speed += 1.5
    when pop >= 50 
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

STATE_DATA.each do |state, pop_info| 
  data = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
  data.virus_effects
end
  




# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# h.each {|key, value| puts "#{key} is #{value}" }
#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The state_data file is a "hashy hash" meaning a hash within a hash.  The first hash has a string as the key and more info as the value and the interior hash has pop density and population as the key and a float or integer as the value.  

# What does require_relative do? How is it different from require?
# Require relative is when you require a file that is within the same dir as the current dir you're working within.  Require is a way to take advantage of built in Ruby libraries.

# What are some ways to iterate through a hash?
# The most basic way to iterate over a hash is as follows:

# hash.each do |key, value|
#   puts key
#   puts value
# end

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# They were redundant.  The only variable we really needed was pop density.  

# What concept did you most solidify in this challenge?
# This was a tricky one, coming off the back of a week of JS.  I think I solidified the attr: reader method most in this pair challenge, which creates instance variables and corresponding methods that return the value of each instance variable.  

