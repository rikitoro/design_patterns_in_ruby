require 'task'

class FillPanTask < Task
	def initialize
		super('Fill pan')
	end
	
	def get_time_required
		3.14
	end
end
