require 'british-text-object'
require 'render'

bto = BritishTextObject.new('Hello British Morning', 25.4, 'red')

def bto.color 
	@colour
end
	
def bto.text
	@string
end
	
def bto.size_inches
	@size_mm / 25.4
end

render = Render.new
render.render(bto)

