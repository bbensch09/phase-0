# Create a Car Class from User Stories


# I worked on this challenge with Brian and Fatma.

# USER STORIES

# As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.
# As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
# As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
# As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
# As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
# As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
# As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
# As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.


# 2. Pseudocode
# Define a class called Car
# Define initialize method with arguments of model and color where user enters these arguments.
# Define drive method with arguments are distance, speed limit
# Create an object that takes the model, color of the car and the distance required.
# Define speed and mileage variables and define methods of turn_right and turn_left for accelerating and decelerating for left & right turns
# Define stop method that sets the speed variable to zero.
# Define display method that displays the speed, total distance that travelled and last action(turn left, right)
# Define pizza array.
# Define pick_up method for picking up pizza, then push it into our array.
# Define drop_off method for delivering the pizza, take it from our array once it is delivered.
# Display whatever left from the pizza box.

# # 3. Initial Solution
class Car

  def initialize(model, color)
    @model = model
    @color = color
    @speed = 0
    @last_action = "You haven't started driving yet."
    @total_distance = 0
    puts "You are driving #{@model}, #{@color} car."
    @pizza_box = []
  end

  def drive(distance, speed)
    @total_distance += distance
    @speed = speed
    @last_action = "You were driving #{distance} miles at #{speed} mph."
  end

  def change_speed(speed)
    @speed = speed
  end

  def turn_right
    @last_action = 'You just made a right turn.'
  end

  def turn_left
    @last_action= 'You just made a left turn.'
  end

  def stop
    @speed = 0
    self.display
  end

  def pick_up(pizza_name)
    @pizza_box.push(pizza_name)
  end

  def drop_off
    puts "You just dropped off #{@pizza_box[0]}."
    @pizza_box.shift
    puts "The next pizza to be delivered is #{@pizza_box[-1]}."
  end


  def display
    puts "Your current speed is #{@speed} mph."
    puts "You have traveled total of #{@total_distance} miles."
    puts @last_action
    # puts "The pizza box has #{@pizza_box} left."

  end


end

class Pizza

  def initialize(toppings, size, crust)
    @toppings = toppings
    @size = size
    @crust = crust
  end

  def description
    puts "Your pizza is a #{@size} inch pizza with #{@crust} crust and #{@toppings}."
  end

end


# 4. Refactored Solution
#removed variables fir speed equal to zero at initialize.
#cleaned up text printouts to be more logical.

class Car

  def initialize(model, color)
    @model = model
    @color = color
    @total_distance = 0
    @last_action = "You haven't started driving yet."
    puts "You are driving #{@model}, #{@color} car."
    @pizza_box = []
  end

  def drive(distance, speed)
    @total_distance += distance
    @speed = speed
    @last_action = "You were driving #{distance} miles at #{speed} mph."
  end

  def change_speed(speed)
    @speed = speed
  end

  def turn_right
    @last_action = 'You just made a right turn.'
  end

  def turn_left
    @last_action= 'You just made a left turn.'
  end

  def stop
    @speed = 0
    self.display
  end

  def pick_up(pizza_name)
    @pizza_box.push(pizza_name)
  end

  def drop_off
    puts "You just dropped off #{@pizza_box[0]}."
    @pizza_box.shift
    puts "The next pizza to be delivered is #{@pizza_box[-1]}."
  end


  def display
    puts "Your current speed is #{@speed} mph."
    puts "You have traveled total of #{@total_distance} miles."
    puts @last_action

  end


end

class Pizza

  def initialize(toppings, size, crust)
    @toppings = toppings
    @size = size
    @crust = crust
  end

  def description
    puts "Your pizza is a #{@size} inch pizza with #{@crust} crust and #{@toppings}."
  end

end



# 1. DRIVER TESTS GO BELOW THIS LINE

#DRIVER CODE
new_car = Car.new('Tesla Model S','red')
pepperoni = Pizza.new('pepperoni',16,'pan')
pepperoni.description
veggie = Pizza.new('veggie',14,'thick')
veggie.description
new_car.pick_up('pepperoni')
new_car.pick_up('veggie')
new_car.display
new_car.drive(0.25,25)
new_car.stop
new_car.turn_right
new_car.drive(1.5,35)
new_car.display
new_car.change_speed(15)
new_car.drive(0.25,15) #if we have time; lets confirm how to make second arguments optional in Ruby?
new_car.stop
new_car.turn_left
new_car.drive(1.4,35)
new_car.drop_off
new_car.stop



=begin
Create a new car of your desired model and type
Drive .25 miles (speed limit is 25 mph)
At the stop sign, turn right
Drive 1.5 miles (speed limit is 35 mph)
At the school zone, check your speed
Slow down to speed limit 15 mph
Drive .25 miles more miles
At the stop sign, turn left
Drive 1.4 miles (speed limit is 35 mph)
Stop at your destination
Log your total distance travelled
=end





# 5. Reflection