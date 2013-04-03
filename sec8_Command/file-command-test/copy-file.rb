require 'command'
require 'fileutils'

class CopyFile < Command
	def initialize(source, target)
		super("Copy file: #{source} to #{target}")
		@source = source
		@target = target
	end
	
	def execute
		if File.exist?(@target)
			@contents = File.read(@target)
		end
		FileUtils.copy(@source, @target)
	end

	def unexecute
		File.delete(@target)
		if @contents
			f = File.open(@target, "w")
			f.write(@contents)
			f.close
		end
	end
end