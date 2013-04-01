require 'task'

class AddLiquidsTask < Task
	def initialize
		super('Add Liquids')
	end
	
	def get_time_required
		0.5
	end
end
