class Tiger
	def initialize(name)
		@name = name
	end
	
	def eat
		puts("トラ#{@name}食べたいものを何でも食べます。")
	end
	
	def speak
		puts("トラ#{@name}はガオーとほえています。")
	end
	
	def sleep
		puts("トラ#{@name}は眠くなったら眠ります。")
	end
end