class Student

    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        Student.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor_object)
        BoatingTest.new(self, test_name, status, instructor_object)
    end

    def self.find_student(given_name)
        self.all.find {|stu| stu.name == given_name}
    end

end
