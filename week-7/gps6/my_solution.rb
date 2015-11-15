# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
#

# this statement requires that a file called "state_data" must exist in the same relative directory as our my_solution.rb and the contents of that file will be pre-loaded when we run our file.
#using just "require" would mean that you would have to specify the file type among other things; relative signifies it will be the same file type and location

require_relative 'state_data'

class VirusPredictor

  # this is the method called when a new instance of VirusPredictor is made, each parameter is passed to an instance variable.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls our other two methods, 'predicted_deaths' and 'speed_of_spread', passing the instance variables
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private


  # calculates the 'number_of_deaths' based on @population and @population density; then prints the @state followed by the result
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      ratio = 0.4
    elsif @population_density >= 150
      ratio = 0.3
    elsif @population_density >= 100
      ratio = 0.2
    elsif @population_density >= 50
      ratio = 0.1
    else
      ratio = 0.05
    end
    number_of_deaths = (ratio * @population).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # calculates the number of months it would take for the disease to spread based on population density; and prints the result.
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

def us_states_report(state_list)

  state_list.each do |key, value|
    new_states = VirusPredictor.new( key, value[:population_density], value[:population] )
    new_states.virus_effects
  end

end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

us_states_report( STATE_DATA )

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The first is standard notation and uses string values as the keys with the => assigning values to each key. The second is symbol notation, which executes slightly faster due to the immutability / uniqueness of symbols.

What does require_relative do? How is it different from require?
It requires that a the named file exist in the same relative directory as the current file, and it pre-loads / runs the script in that file whenever the current file is run.

What are some ways to iterate through a hash?
You can iterate through a hash using any of the enumerable hash methods like each or map, and usually you will follow that with the syntax "|key, value| do some stuff with key or value end" syntax.

When refactoring virus_effects, what stood out to you about the variables, if anything?
Despite creating instance variables in the initialize, each sub-method was simply then still using local variables as arguments, which was redundant since we might as well use the instance variables we created.

What concept did you most solidify in this challenge?
I solidified my understanding of how to call values within an iteration on a hash that uses symbol notation. i.e. running the block value[:symbol_name], which I hadn't done before.
=end