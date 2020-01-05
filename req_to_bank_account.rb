require_relative 'bank_account.rb'

class Branch

	def initialize
		@accounts = []
	end

	def add_account(account)
		# Adds the account to the @accounts array
		@accounts.push(account)
	end

	def get_accounts
		# TODO: Print out the account ids instead of the hex values
		@accounts.each do |a|
			puts a.get_id
		end
	end

	def deposit(account, amnt)
		# Call the add_funds
		account.add_funds(amnt)
	end

	def withdraw(account, amnt)
		# TODO: implement the method. Similar to deposit
		account.subtract_funds(amnt)
	end
end