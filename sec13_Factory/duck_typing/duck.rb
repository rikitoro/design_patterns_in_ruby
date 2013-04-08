class Duck
	def initialize(name)
		@name = name
	end
	
	def eat
		puts("アヒル#{@name}は食事中です。")
	end
	
	def speak
		puts("アヒル#{@name}はガーガー鳴いてます。")
	end
	
	def sleep
		puts("アヒル#{@name}は静に眠っています。")
	end
end