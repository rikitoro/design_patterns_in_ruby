require 'computer_builder'

builder1 = ComputerBuilder.new
builder1.add_dvd_and_harddisk
computer1 = builder1.computer
p computer1

builder2 = ComputerBuilder.new
builder2.add_turbo_and_dvd_and_harddisk
computer2 = builder2.computer
p computer2
