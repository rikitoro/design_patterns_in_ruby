require 'computer_builder'

builder1 = DesktopBuilder.new
builder1.turbo
builder1.add_cd(true)
builder1.add_dvd
builder1.add_hard_disk(1000000)
desktop = builder1.computer
p desktop

builder2 = LaptopBuilder.new
builder2.add_hard_disk(10000)
laptop = builder2.computer
p laptop

builder3 = LaptopBuilder.new
builder3.add_cd
laptop3 = builder3.computer
