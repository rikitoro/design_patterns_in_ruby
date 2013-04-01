class Payroll
	def update(changed_employee)
		puts("#{changed_employee.name}のために小切手を切ります！")
		puts("彼の給料は今#{changed_employee.salary}です！")
	end
end