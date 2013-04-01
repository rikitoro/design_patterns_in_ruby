require 'employee'
require 'payroll'
require 'taxman'

fred = Employee.new("Fred Flintstone", "Crane Operator", 30000.0)

payroll = Payroll.new
fred.add_observer(payroll)

taxman = TaxMan.new
fred.add_observer(taxman)

fred.salary = 35000.0 

