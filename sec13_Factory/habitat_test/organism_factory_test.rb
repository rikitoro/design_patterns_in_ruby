require 'tiger'
require 'tree'
require 'frog'
require 'water_lily'
require 'habitat'

require 'organism_factory'

jungle_organism_factory = OrganismFactory.new(Tree, Tiger)
jungle = Habitat.new(1, 4, jungle_organism_factory)
jungle.simulate_one_day

pond_organism_factory = OrganismFactory.new(WaterLily, Frog)
pond = Habitat.new(2, 4, pond_organism_factory)
pond.simulate_one_day


