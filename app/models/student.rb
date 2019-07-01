require 'pry'

class Student

	attr_reader :first_name

	@@all = []

	def initialize(first_name)
		#should initialize with first_name
		@first_name = first_name
		Student.all << self
	end

	def self.all 
		#Student.all should return all of the student instances
		@@all 
	end

	def self.find_student(name)
		# Student.find_student will take in a first name and output the student (Object) with that name
		Student.all.find do |students|
			name == students.first_name
		end
	end

	def add_boating_test(test_n, test_s, ins)
		# Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
		BoatingTest.new(self, test_n, test_s, ins)
	end

	def all_boating_tests
		BoatingTest.all.select do |boating_test_instance|
			boating_test_instance.student == self
		end
	end

	def grade_percentage
		# Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
		a = self.all_boating_tests.collect do |information|
			information.test_status == "passed"
		end
		b = a.count(true) / a.size.to_f * 100
		b.round(2)
	end

end
