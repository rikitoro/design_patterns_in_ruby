require 'employee'

fred = Employee.new("Fred Flintstone", "Crane Operator", 30000.0)

fred.add_observer do |changed_employee|
	puts("#{changed_employee.name}のために小切手を切ります！！！")
	puts("彼の給料はいま#{changed_employee.salary}です！！！")
end

fred.add_observer do |changed_employee|
	puts("#{changed_employee.name}に新しい税金の請求書を送ります。")
end


fred.salary = 35000.0 

