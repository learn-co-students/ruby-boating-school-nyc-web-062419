class Student
  attr_accessor :name, :tests

  @@all = []

  def initialize(name)
    @name = name
    @tests = []
    Student.all << self
  end

  def add_boating_test(testName, status, instructor)
    #Make new boating test with a Student, name, status and Instructor
    BoatingTest.new(self, testName, status, instructor)
  end

  def grade_percentage
    #Look through tests student has taken and return the average Passes / Total tests taken.
    totalTests = self.tests.count
    passedTests = self.tests.select { |test| test.status == "passed" }.count
    return (passedTests.to_f * 100 / totalTests.to_f).to_s + "%"
  end

  def self.find_student(name)
    Student.all.find { |student| student.name == name }
  end

  def self.all
    @@all
  end
end
