require 'task'
require 'add-dry-ingredients-task'
require 'add-liquids-task'
require 'mix-task'

class MakeBatterTask < Task
	def initialize
		super('Make batter')
		@sub_tasks = []
		add_sub_task(AddDryIngredientsTask.new)
		add_sub_task(AddLiquidsTask.new)
		add_sub_task(MixTask.new)
	end
	
	def add_sub_task(task)
		@sub_tasks << task
	end
	
	def delete_sub_task(task)
		@sub_tasks.delete(task)
	end
	
	def get_time_required
		time = 0.0
		@sub_tasks.each {|task| time += task.get_time_required}
		time
	end
	
end