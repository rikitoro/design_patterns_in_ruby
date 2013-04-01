require 'composite-task'
require 'add-dry-ingredients-task'
require 'add-liquids-task'
require 'mix-task'

class MakeBatterTask < CompositeTask
	def initialize
		super('Make batter')
		add_sub_task(AddDryIngredientsTask.new)
		add_sub_task(AddLiquidsTask.new)
		add_sub_task(MixTask.new)
	end

	
end