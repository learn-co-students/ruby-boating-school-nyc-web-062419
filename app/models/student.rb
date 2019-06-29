class Student
    attr_reader :name
    @@all  = []
    def initialize name
        @name = name
        Student.all << self
    end
    def self.all
        @@all 
    end
    def add_boating_test test_name,status,instructor
        BoatingTest.new(self,test_name,status,instructor)
    end
    def self.find_student name
        Student.all.find {|s| s.name == name}
    end
    def grade_percentage
        grades = BoatingTest.all.select {|t| t.student == self && ["passed","failed"].include?(t.status)}.map {|t| t.status}
        (grades.count("passed")/grades.length.to_f*100.to_f).round(2)
    end
end