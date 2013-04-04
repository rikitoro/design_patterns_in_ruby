class AddEmployee
	def initialize(employee)
		@employee = employee
	end
	
	def execute(system)
		system.add_employee(@employee)
	end
end

class DeleteEmployee
	def initialize(number)
		@number = number
	end
	
	def execute(system)
		system.delete_employee(@number)
	end
end

class ChangeAddress
	def initialize(number, address)
		@number = number
		@address = address
	end
	
	def execute(system)
		system.change_address(@number, @address)
	end
end

class FindEmployee
	def initialize(number)
		@number = number
	end
	
	def execute(system)
		system.find_employee(@number)
	end
end