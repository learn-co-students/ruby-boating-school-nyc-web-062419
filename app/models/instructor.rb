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
    def pass_student student,test_name
        present_test = BoatingTest.all.find {|t| t.student == student && t.test_name == test_name}
        if present_test
            present_test.status = "passed"
        else 
            BoatingTest.new(student,test_name,"passed",self)
        end
    end
    def fail_student student,test_name
        present_test = BoatingTest.all.find {|t| t.student == student && t.test_name == test_name}
        if present_test
            present_test.status = "failed"
        else 
            BoatingTest.new(student,test_name,"failed",self)
        end
    end
end
