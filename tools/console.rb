require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


st1 = Student.new("Jim")
st2 = Student.new("Jill")
st3 = Student.new("Fred")
st4 = Student.new("Sally")
st5 = Student.new("Jerry")

inst1 = Instructor.new("Dennise")
inst2 = Instructor.new("Phil")

test1 = BoatingTest.new(st1, "a" , inst1)
test2 = BoatingTest.new(st3, "b" , inst1)
test3 = BoatingTest.new(st3, "c" , inst1)
test4 = BoatingTest.new(st2, "d" , inst2)
test5 = BoatingTest.new(st4, "e" , inst2)
test6 = BoatingTest.new(st5, "f" , inst2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line

