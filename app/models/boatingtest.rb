require 'pry'

class BoatingTest

	attr_accessor :student, :test_name, :test_status, :instructor 

	@@all = []

	def initialize(student, test_name, test_status, instructor)
		# should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
		@student = student 
		@test_name = test_name
		@test_status = test_status
		@instructor = instructor 
		BoatingTest.all << self
	end

	def self.all 
		@@all 
		# BoatingTest.all returns an array of all boating tests
	end




end


