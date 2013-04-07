require 'simple_writer'

w = SimpleWriter.new('out.txt')

class << w
	alias old_write_line write_line
	
	def write_line(line)
		old_write_line("#{Time.new}: #{line}")
	end
end

w.write_line('Wripping test')
