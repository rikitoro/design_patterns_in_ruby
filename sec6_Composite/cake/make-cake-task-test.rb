require 'make-cake-task'

make_cake_task = MakeCakeTask.new
make_cake_task << MakeBatterTask.new

puts("Make cake task: #{make_cake_task.get_time_required}")
