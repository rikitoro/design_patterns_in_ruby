PLAINTEXTFORMATTER = lambda do |context|
	puts("**** #{context.title} ****")
	context.text.each do |line|
		puts(line)
	end
end
