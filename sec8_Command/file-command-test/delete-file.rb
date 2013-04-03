require 'command'

class DeleteFile < Command
	def initialize(path)
		super("Delete file: #{path}")
		@path = path
	end
	
	def execute
		if File.exist?(@path)
			@contents = File.read(@path)
		end
		File.delete(@path)
	end
	
	def unexecute
		f = File.open(@path, "w")
		f.write(@contents)
		f.close
	end
end