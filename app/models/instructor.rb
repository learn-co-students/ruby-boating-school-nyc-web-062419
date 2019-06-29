

class Instructor

    @all = []

    def self.all
        @all
    end

    attr_accessor :name

    def initialize(name)

        @name = name

        Instructor.all << self

    end

    def pass_student(student, name)
    
        if student.tests.any?{|test| test.name == name}
            test = student.tests.find{|test| test.name == name}
            test.status = "passed"

        else
            test =  BoatingTest.new(student, name, self, "passed")

        end
        test

    end

    def fail_student(student, name)

        if student.tests.any?{|test| test.name == name}
            test = student.tests.find{|test| test.name == name}
            test.status = "failed"

        else
            test =  BoatingTest.new(student, name, self, "failed")

        end
        test
    end

end
