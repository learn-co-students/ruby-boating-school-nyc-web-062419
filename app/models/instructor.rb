class Instructor

    attr_reader :name

    @@all = []

    def initialize name
        @name = name
        Instructor.all << self
    end

    def self.all
        @@all
    end

    def pass_student(student,test)
        #find matching test
        test_match = 
        BoatingTest.all.find do |tests|
            tests.test_name == test
        end

        if test_match == nil
            test_match = BoatingTest.new(student,test,self)
            test_match.status = "passed"
        else
            test_match.status = "passed"
        end
        test_match
    end

    def fail_student(student,test)
        #find matching test
        test_match = 
        BoatingTest.all.find do |tests|
            tests.test_name == test
        end

        if test_match == nil
            test_match = BoatingTest.new(student,test,self)
            test_match.status = "failed"
        else
            test_match.status = "failed"
        end
        test_match
    end


end
