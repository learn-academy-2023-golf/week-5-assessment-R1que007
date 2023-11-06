# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:
#Define a method sort_states
#Extract the values of the array onto a single array
    #Use .flatten
#sort the array
    #Use .sort
#return the sorted array

def sort_states(hash)
    combined_sorted_array = hash.values.flatten.sort
end

result = sort_states(us_states)
p result


# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:
#Create a class called Bike
#initialize model, wheels, and current_speed
#set default wheels = 2
#set default current speed = 0
#Create bike_info method 
    #return a string with all data.
        #create an instance of Bike, my_bike
        #call bike_info on my_bike

# class Bike
#  def initialize (model, wheels = 2, current_speed = 0)
#     @model = model
#     @wheels = wheels
#     @current_speed = current_speed
#  end

#  def bike_info
#     "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph"
#  end
# end
# my_bike = Bike.new("Trek") #creates instance of Bike class.

# puts my_bike.bike_info #call the bike_info method on my_bike


# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
# Create pedal method pedal_faster with parameter increased_speed
    #increase @current_speed by increse_speed
# Create breake method with parameter decrease_speed
    #decrease @current_speed by decrease_speed
    # add conditional to output zero if current speed goes below 0


class Bike
    def initialize (model, wheels = 2, current_speed = 0)
       @model = model
       @wheels = wheels
       @current_speed = current_speed
    end
   
    def bike_info
       "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph"
    end

    def pedal_faster(increase_speed)
        @current_speed += increase_speed
    end
    
    def break(decrease_speed)
        if @current_speed - decrease_speed >= 0
            @current_speed -= decrease_speed
        else 
            @current_speed = 0
        end
    end
end

my_bike = Bike.new("Trek") #creates instance of Bike class.
puts my_bike.bike_info #call the bike_info method on my_bike
my_bike.pedal_faster(10) #call pedal_faster method w/ argument (10)
puts my_bike.bike_info 
my_bike.pedal_faster(18) #call pedal_faster method w/ argument (18)
puts my_bike.bike_info
my_bike.break(5) 
puts my_bike.bike_info 
my_bike.break(25)
puts my_bike.bike_info
# The Trek bike has 2 wheels and is going 0 mph
# The Trek bike has 2 wheels and is going 10 mph
# The Trek bike has 2 wheels and is going 28 mph
# The Trek bike has 2 wheels and is going 23 mph
# The Trek bike has 2 wheels and is going 0 mph
