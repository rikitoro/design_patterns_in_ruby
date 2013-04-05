require 'british-text-object'
require 'render'

class BritishTextObject
	def color
		return @colour
	end
	
	def text
		return @string
	end
	
	def size_inches
		return @size_mm / 25.4
	end
end


bto = BritishTextObject.new('Hello British Morning', 10.0, 'red')
render = Render.new
render.render(bto)

