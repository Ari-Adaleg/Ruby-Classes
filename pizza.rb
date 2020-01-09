class Pizza

	# Instance method
	def initialize(add_toppings)
		# Instance variables
		@cook = false
		@slices = 0
		@toppings = add_toppings
	end

	def bake
		if !@cook
			@cook = true
		end
	end

	def cut
		if @cook == true
			@slices += 2
		end
	end

	def eat
		if @slices > 0
			@slices -= 1
		end		
	end

end


# Class method ==> (.new)
amnons_pizza = Pizza.new(["mushrooms", "onions", "tomato"])
amnons_pizza.bake

100.times do 
	amnons_pizza.cut
end

100.times do
	amnons_pizza.eat
end

p amnons_pizza