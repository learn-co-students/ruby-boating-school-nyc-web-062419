class Student

    @@all = []

    attr_reader :first_name

    def initialize (first_name)
        @first_name = first_name
        Student.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(first_name)
        self.all.find {|student| student.first_name == first_name}
    end

    def grade_percentage
        my_tests = BoatingTest.all.select {|test| test.student == self}
        passing = my_tests.select{|test| test.status == "passed"}
        ((passing.length.to_f / my_tests.length) * 100).round(2)
    end

end
