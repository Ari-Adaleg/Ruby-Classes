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

	def get_size
		return @size
	end

	def get_num_of_legs
		return @num_of_legs
	end

	def get_height
		return @height
	end

	def set_speed(new_speed) # Setter
		@speed = new_speed
	end

	def set_size(new_size)
		@size = new_size
	end

	def set_num_of_legs(new_nol)
		@num_of_legs = new_nol
	end

	def set_height(new_height)
		@height = new_height
	end
end

cat = Animal.new(10, 20, 4, 0.25)
fish = Animal.new(100, 10, 2, 200)
# Incorrect way to get speed
# puts fish.speed

# Correct: Using a getter
puts cat.get_speed
puts cat.get_size
puts cat.get_num_of_legs
puts cat.get_height
cat.set_speed(30)
cat.set_size(0.46)
cat.set_num_of_legs(4)
cat.set_height(0.35)
puts cat.get_speed
puts cat.get_size
puts cat.get_num_of_legs
puts cat.get_height