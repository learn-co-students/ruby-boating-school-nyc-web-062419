require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

instructor1 = Instructor.new("Bob")
instructor2 = Instructor.new("Joe")
instructor3 = Instructor.new("Cat")

student1 = Student.new("Driver1")
student2 = Student.new("Driver2")
student3 = Student.new("Driver3")

test1 = BoatingTest.new(student1,"DT 1", instructor1)
test2 = BoatingTest.new(student2,"DT 2", instructor2)
test3 = BoatingTest.new(student3,"DT 3", instructor1)
test4 = BoatingTest.new(student1,"DT 4", instructor3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

