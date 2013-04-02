f = File.open('names.txt')
while not f.eof?
	puts(f.readline)
end
f.close


