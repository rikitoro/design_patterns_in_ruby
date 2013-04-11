require 'tiger'
require 'jungle'
require 'species'

tony_tiger = Tiger.new('tony')
se_jungle = Jungle.new('southeastern jungle tigers')
se_jungle.add_sub_population(tony_tiger)

p tony_tiger.parent_population

species = Species.new('P. tigris')
species.add_sub_classification(tony_tiger)

p tony_tiger.parent_classification
