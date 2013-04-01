require 'composite-task'
require 'fill-pan-task'
require 'make-batter-task'

class MakeCakeTask < CompositeTask
	def initialize
		super('Make cake')
		add_sub_task(MakeBatterTask.new)
		add_sub_task(FillPanTask.new)
	end

	
end