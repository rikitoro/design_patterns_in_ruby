require 'motherboard'

class Computer
	attr_accessor :display
	attr_accessor :motherboard
	attr_reader :drives
	
	def initialize(display=:ctr, motherboard = Motherboard.new, drives = [])
		@motherboard = motherboard
		@drives = drives
		@display = display
	end
end
