require 'task'

class LeafTask < Task
	attr_accessor :time_required
	
	def initialize(name, time_required)
		super(name)
		@time_required = time_required
	end
	
	def get_time_required
		@time_required
	end
end