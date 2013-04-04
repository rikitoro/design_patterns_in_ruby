require 'rubygems'
require 'madeleine'

require 'employee'
require 'employee-manager'
require 'commands'

store = SnapshotMadeleine.new('employees') {EmployeeManager.new}

Thread.new do
	while true
		sleep(20)
		madeleine.take_snapshot
	end
end


