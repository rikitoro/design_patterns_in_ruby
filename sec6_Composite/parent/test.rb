require 'composite-task'
require 'leaf-task'

leaf_task_1 = LeafTask.new('Leaf Task 1', 1)
leaf_task_2 = LeafTask.new('Leaf Task 2', 10)
composite_task_a = CompositeTask.new('Composite Task a')
composite_task_a.add_sub_task(leaf_task_1)
composite_task_a.add_sub_task(leaf_task_2)
leaf_task_3 = LeafTask.new('Leaf Task 3', 200)
composite_task_b = CompositeTask.new('Composite Task b')
composite_task_b.add_sub_task(composite_task_a)
composite_task_b.add_sub_task(leaf_task_3)

task = leaf_task_1
while task
	puts("task: #{task.name}")
	task = task.parent
end

puts("time requied for #{composite_task_b.name}: #{composite_task_b.get_time_required}")
