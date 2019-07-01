require 'pry'

class Instructor

	attr_reader :instructor_name

	@@all = []

	def initialize(instructor_name)
		# initialize with a name
		@instructor_name = instructor_name
		Instructor.all << self
	end

	def self.all 
		# Instructor.all should return all instructors
		@@all 
	end

	def all_boating_tests
		BoatingTest.all.select do |boating_test_instance|
			boating_test_instance.instructor == self
		end
	end

	def pass_student(student_n, test_n)
	# Instructor#pass_student should take in a student instance and test name. If there is a BoatingTest whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
		does_test_exist = all_boating_tests.find do |boating_test_instance|
			boating_test_instance.student == student_n && 
			boating_test_instance.test_name == test_n 
		end
		if does_test_exist
			does_test_exist.test_status = "passed" 
		else 
			BoatingTest.new(student_n, test_n, "passed", self)
		end
	end

	def fail_student(student_n, test_n)
	# Instructor#fail_student should take in a student instance and test name. Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.
		does_test_exist = all_boating_tests.find do |boating_test_instance|
			boating_test_instance.student == student_n && boating_test_instance.name == test_n
		end
		if does_test_exist
			does_test_exist.test_status = "failed"
		else
			BoatingTest.new(student_n, test_n, "failed", self)
		end
	end
end




