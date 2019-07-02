class Instructor

    @@all = []

    attr_reader :name

    def initialize (name)
        @name = name
        Instructor.all << self
    end

    def self.all
        @@all
    end

    def pass_student (student, test_name)
        test = BoatingTest.all.find {|test| test.name == test_name && test.student == student}
        if test
            test.status = "passed"
            test
        else
            status = "passed"
            BoatingTest.new(student, test_name, status, self)
        end
    end

    def fail_student (student, test_name)
        test = BoatingTest.all.find {|test| test.name == test_name && test.student == student}
        if test
            test.status = "failed"
            test
        else
            status = "failed"
            BoatingTest.new(student, test_name, status, self)
        end
    end

end
