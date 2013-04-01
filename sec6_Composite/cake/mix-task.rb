require 'task'

class MixTask < Task
	def initialize
		super('mix that batter up')
	end
	
	def get_time_required
		3.0
	end
end
