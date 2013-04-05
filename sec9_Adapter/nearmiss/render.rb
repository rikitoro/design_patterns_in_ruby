class Render
	def render(text_object)
		text = text_object.text
		size = text_object.size_inches
		color = text_object.color
		
		puts("text: #{text}")
		puts("size: #{size} inches")
		puts("color: #{color}")
	end
end