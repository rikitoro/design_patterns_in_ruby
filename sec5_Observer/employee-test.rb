require 'employee'

payroll = Payroll.new
fred = Employee.new("Fred Flintstone", "Crane Operator", 30000.0, payroll)

fred.salary = 35000.0

