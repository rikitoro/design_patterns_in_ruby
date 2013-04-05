require 'british-text-object'
require 'render'

bto = BritishTextObject.new('Hello British Morning', 30.0, 'red')

class << bto
	def color 
		@colour
	end
	
	def text
		@string
	end
	
	def size_inches
		@size_mm / 25.4
	end
end



render = Render.new
render.render(bto)

