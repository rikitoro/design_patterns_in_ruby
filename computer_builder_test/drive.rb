class Drive
	attr_reader :type # = :hard_disk, :cd, or :dvd
	attr_reader :size
	attr_reader :writable
	
	def initialize(type, size, writable)
		@type = type
		@size = size
		@writable = writable
	end
end

class LaptopDrive < Drive
	#
end