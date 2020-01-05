# More on Classes

require_relative 'req_to_bank_account.rb'

class BankAccount
	
	def initialize(id) # show them the default param
		@id = id
		@balance = 0
		# @withdrawls = 0
		# @deposits = 0
	end

	def get_id
		return @id
	end

	def get_balance
		return @balance
	end

	def add_funds(amnt)
		@balance += amnt
	end

	def subtract_funds(amnt)
		if @balance - amnt >= 0
			@balance -= amnt
		end
	end

end


# puts account1.get_id
# puts account2.get_id
# puts "Your Balance: %.2f" % account1.get_balance
# account1.deposit(500)
# puts "Your Balance: %.2f" % account1.get_balance
# account1.withdraw(5000)
# puts "Your Balance: %.2f" % account1.get_balance


chequing = BankAccount.new(123)
savings = BankAccount.new(345)

# Every Branch contains accounts with their own balances,


rbc01 = Branch.new
rbc01.add_account(chequing)
rbc01.add_account(savings)
# rbc01.get_accounts
rbc01.deposit(savings, 500.00)
# puts "Savings balance: %.2f" % savings.get_balance
rbc01.get_accounts