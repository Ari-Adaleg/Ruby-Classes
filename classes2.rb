# Classes 2

# A very basic, not useful example
# class Animal
#   def initialize
#     # Attributes
    # @speed = 100
    # @size = 5
    # @num_of_legs = 4
    # @height = 10
#   end 

# end

# dog = Animal.new
# cat = Animal.new

class Animal 

	def initialize(spd, sz, nol, hght)
		@speed = spd
		@size = sz
		@num_of_legs = nol
		@height = hght
	end

	def get_speed # Getter
		return @speed
	end

	def set_speed(new_speed) # Setter
		@speed = new_speed
	end
end

cat = Animal.new(10, 20, 4, 0.25)
fish = Animal.new(100, 10, 2, 200)
# Incorrect way to get speed
# puts fish.speed

# Correct: Using a getter
puts fish.get_speed
fish.set_speed(200)
puts fish.get_speed