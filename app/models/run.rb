require 'pry'
require_relative './student.rb'
require_relative './boatingtest.rb'
require_relative './instructor.rb'

student1 = Student.new("Student1")
student2 = Student.new("Student2")
student3 = Student.new("Student3")

instructor1 = Instructor.new("Instructor1")
instructor2 = Instructor.new("Instructor2")
instructor3 = Instructor.new("Instructor3")

student1.add_boating_test("test1", "failed", instructor1)

binding.pry
puts ""