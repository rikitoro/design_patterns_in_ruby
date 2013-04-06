class AccountProxy 
	def initialize(real_account)
		@subject = real_account
	end
	
	def method_missing(name, *args)
		puts("Delegating #{name} message to subjet.")
		@subject.send(name, *args)
	end
end