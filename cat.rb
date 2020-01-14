class Cat

	def initialize
		@name
		@preferred_food
		@meal_time
	end

	def name(nm)
		@name = nm
	end

	def preferred_food(food)
		@preferred_food = food
	end

	def meal_time(time)
		@meal_time = time
	end

	def eat_at
		t = @meal_time
		if t > 12
			t -= 12
			return "#{t} PM"
		else t < 0
			nil
		end
		return "#{@meal_time} AM"
	end

	def meow
		return "My name is #{@name}, and I eat #{@preferred_food} at #{eat_at}."
	end

end

garfield = Cat.new
arlene = Cat.new

garfield.name("Garfield")
garfield.preferred_food("Lasagna")
garfield.meal_time(12)

arlene.name("Arlene")
arlene.preferred_food("Milk")
arlene.meal_time(9)

puts arlene.meow
puts garfield.meow