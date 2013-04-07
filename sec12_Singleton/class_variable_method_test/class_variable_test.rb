require 'class_variable_tester'

c1 = ClassVariableTester.new
c1.increment
c1.increment
puts("c1: #{c1}")

c2 = ClassVariableTester.new
puts("c2: #{c2}")
