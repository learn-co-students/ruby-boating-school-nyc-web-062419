class Instructor

    @@all = []
    attr_accessor :name, :student
    def initialize(name)
        @name = name
        Instructor.all << self
    end

    def self.all
        @@all
    end

    def pass_student(student_object, test_name, status)
        find_test = BoatingTest.all.find {|test_instance| test_instance.test_name == test_name}
        if find_test == nil
            BoatingTest.new(student_object, test_name, "passed", self)
        else
        find_test.status = "passed"
        find_test
        end
    end

    def fail_student(student_object, test_name, status)
        find_test = BoatingTest.all.find {|test_instance| test_instance.test_name == test_name}
        if find_test == nil
            BoatingTest.new(student_object, test_name, "failed", self)
        else
        find_test.status = "failed"
        find_test
        end
    end

end