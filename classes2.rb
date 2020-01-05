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
	attr_accessor :speed, :size, :num_of_legs, :height
end

cat = Animal.new(10, 20, 4, 0.25)
fish = Animal.new(100, 10, 2, 200)
# Incorrect way to get speed
# puts fish.speed

# Correct: Using a getter
puts cat.speed
puts cat.size
puts cat.num_of_legs
puts cat.height
cat.speed = 30
cat.size = 0.46
cat.num_of_legs = 4
cat.height = 0.35
puts cat.speed
puts cat.size
puts cat.num_of_legs
puts cat.height