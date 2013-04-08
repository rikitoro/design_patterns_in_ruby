require 'tiger'
require 'tree'
require 'duck'
require 'water_lily'
require 'habitat'

jungle = Habitat.new(1, Tiger, 4, Tree)
jungle.simulate_one_day

pond = Habitat.new(2, Duck, 4, WaterLily)
pond.simulate_one_day
