require 'pond'
require 'duck'
require 'water_lily'

pond = Pond.new(3, Duck, 2, WaterLily)
pond.simulate_one_day
