require 'british-text-object'
require 'british-text-object-adapter'
require 'render'

bto = BritishTextObject.new('Hello British Morning', 20.0, 'red')
render = Render.new
render.render(BritishTextObjectAdapter.new(bto))
