require 'subject'

class Employee < Subject
	attr_reader :name
	attr_reader :title, :salary

	def initialize(name, title, salary)
		super()
		@name = name
		@title = title
		@salary = salary
	end
	
	def salary=(new_salary)
		@salary = new_salary
		notify_observers
	end
	
end
