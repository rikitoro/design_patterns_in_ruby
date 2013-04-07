require 'forwardable'

class WriterDecorator 
	extend Forwardable
	
	def_delegators :@real_writer, :write_line, :pos, :pos, :close

	def initialize(real_writer)
		@real_writer = real_writer
	end
end