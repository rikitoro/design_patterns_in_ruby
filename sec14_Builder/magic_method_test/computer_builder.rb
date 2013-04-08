require 'computer'
require 'drive'

class ComputerBuilder
	attr_reader :computer
	
	def initialize
		@computer = Computer.new
	end
	
	def turbo(has_turbo_cpu = true)
		@computer.motherboard.cpu = TurboCPU.new
	end
	
	def display=(display)
		@computer.display = display
	end
	
	def memory_size=(size_in_mb)
		@computer.motherboard.memory_size = size_in_mb
	end
	
	def add_cd(writer=false)
		@computer.drives << Drive.new(:cd, 760, writer)
	end

	def add_dvd(writer=false)
		@computer.drives << Drive.new(:dvd, 4000, writer)
	end
	
	def add_hard_disk(size_in_mb)
		@computer.drives << Drive.new(:hard_disk, size_in_mb, true)
	end
	
	def computer
		raise "Not enough memory." if @computer.motherboard.memory_size < 250
		raise "Too many drives." if @computer.drives.size > 4
		hard_disk = @computer.drives.find {|drive| drive.type == :hard_disk}
		raise "No hard disk." unless hard_disk
		@computer
	end
	
	def method_missing(name, *args)
		words = name.to_s.split("_")
		return super(name, *args) unless words.shift == 'add'
		words.each do |word|
			next if word == 'and'
			add_cd if word == 'cd'
			add_dvd if word == 'dvd'
			add_hard_disk(1000000) if word == 'harddisk'
			turbo if word == 'turbo'
		end
	end
	
end







