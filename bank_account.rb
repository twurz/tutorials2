class BankAccount

	class << self
	def create_for(first_name, last_name)
		@accounts ||= []
		@accounts << BankAccount.new(first_name, last_name)
	end
	
	def find_for(first_name, last_name)
		@accounts.find{|account| account.full_name == "#{first_name} #{last_name}"}
	
	def initialize(first_name, last_name)
		@balance = 0
		@first_name = first_name
		@last_name = last_name
	end
	
	def full_name
		"#{@first_name} #{@last_name}"
	end
	
	def deposit(amount)
		@balance += amount
	end
	
	def withdrawl(amount)
		@balance -= amount
	end
	
	def call_the_reset_method
		reset!
	end
	
	private
	def reset!
		@balance = 0
	end
	
	def reset_other_balance(other_account)
		other_account.protected_reset!
	end
	
	def private_reset!
		@balance
	end
	
	def protected_reset!
		@balance = 0
	end
	
	def balance
		@balance
	end
end

bank_account = BankAccount.new("Travis", "Seifer")
puts bank_account.inspect