class BankAccount

	def initialize
		@balance = 0
		@intrest_rate = 5
	end

	def gain_interest
		@balance += @intrest_rate
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		@balance -= amount
	end

end

rbc = BankAccount.new
rbc.deposit(10000)

p rbc.inspect

rbc.withdraw(700)

p rbc.inspect

rbc.gain_interest

p rbc.inspect