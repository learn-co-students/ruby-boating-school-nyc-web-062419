class Student
    attr_reader :first_name
    @@all = []
    def initialize first_name
        @first_name = first_name
        Student.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test,instructor)
        BoatingTest.new(self,test,instructor)
    end

    def self.find_student(name)
        self.all.find do |student|
            student.first_name == name
        end
    end

    def grade_percentage
        #get all student instance test status
        all_grades = 
        BoatingTest.all.select do |test|
            test.student == self
        end

        #gets all test scores for student instance
        student_grades = all_grades.select do |test|
            test.status == "passed" || test.status == "failed"
        end

        grades = student_grades.map do |test|
            test.status 
        end

        #division of all passed test and all test
        grade_ratio = grades.select do |grade|
            grade == "passed"
        end.count / grades.count.to_f

        grade_ratio * 100 

    end

end
