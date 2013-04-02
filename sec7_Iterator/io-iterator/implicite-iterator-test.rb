f = File.open('names.txt')
f.each {|line| puts(line)}
f.close
