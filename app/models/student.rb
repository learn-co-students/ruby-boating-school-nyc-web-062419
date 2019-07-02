require 'pry'
class Student
  attr_accessor :first_name

  @@all = []
  
  def initialize(first_name)
    @first_name = first_name
    Student.all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end
  
  def self.find_student(student_first_name)
    self.all.find do |student|
      student.first_name == student_first_name
    end
  end

  # * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)

  def grade_percentage
  end

end
