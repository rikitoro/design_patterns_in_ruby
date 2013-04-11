require 'species'

class Species < CompositeBase
	composite_of(:classification)
end
