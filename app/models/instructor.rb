require 'pry'

class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    Instructor.all << self
  end

  def self.all
    @@all
  end

  #* `Instructor#pass_student` should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the `BoatingTest` instance.

  def pass_student(student, test_name)
    passedtest = BoatingTest.all.find do |test|
      test.student.first_name == student.first_name && test.name == test_name
    end
    if passedtest 
      passedtest.status = 'passed'
    else
      BoatingTest.new(student, test_name, 'passed', self)
    end
  end

  # * `Instructor#fail_student` should take in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.

  def fail_student(student, test_name)
    failed_test = BoatingTest.all.find do |test|
      test.student.first_name == student.first_name && test_name == test_name
    end
    if failed_test
      failed_test.status = 'failed'
    else
      BoatingTest.new(test_name, student, 'failed', self)
    end
  end
end
