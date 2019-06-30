class Instructor
  attr_accessor :name, :tests

  @@all = []

  def initialize(name)
    @name = name
    @tests = []
    Instructor.all << self
  end

  def pass_student(student, testName)
    theTest = BoatingTest.all.find { |test| test.student == student && test.name == testName }
    if theTest
      theTest.status = "passed"
    else
      theTest = BoatingTest.new(student, testName, "passed", self)
    end
    theTest
  end

  def fail_student(student, testName)
    #does the same as pass_student but fails the student instead
    theTest = BoatingTest.all.find { |test| test.student == student && test.name == testName }
    if theTest
      theTest.status = "failed"
    else
      theTest = BoatingTest.new(student, testName, "failed", self)
    end
    theTest
  end

  def self.all
    @@all
  end
end
