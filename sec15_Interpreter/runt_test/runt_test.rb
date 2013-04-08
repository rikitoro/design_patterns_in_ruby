require 'rubygems'
require 'runt'

mondays = Runt::DIWeek.new(Runt::Monday)
wednesdays = Runt::DIWeek.new(Runt::Wednesday)
fridays = Runt::DIWeek.new(Runt::Friday)

p fridays.include?(Date.new(2015, 12, 25))
p mondays.include?(Date.new(2015, 12, 25))
p wednesdays.include?(Date.new(2015, 12, 25))

nine_to_twelve = Runt::REDay.new(9, 0, 12, 0)
p nine_to_twelve

mwf_days = (mondays | wednesdays | fridays)
p mwf_days.include?(Date.new(2015, 12, 25))
