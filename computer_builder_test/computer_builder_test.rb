require 'computer_builder'

builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(1000000)

computer = builder.computer

p computer
