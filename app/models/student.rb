

class Student

    @all = []

    def self.all
        @all
    end

    attr_accessor  :first_name

    def initialize(first_name)

        @first_name = first_name

        Student.all << self
    end

    def add_boating_test(name, instructor)

        BoatingTest.new(self, name, instructor)

    end

    def self.find_student(name)

        matches = self.all.select{|student| student.first_name == name}

        if matches.length == 0
            nil
        elsif matches.length == 1
            matches[0]
        else
            matches
        end
    end

    def tests

        BoatingTest.all.select{|test| test.student == self}

    end

    def grade_percentage

    
        self.tests.select{|test| test.status == "passed"}.length.to_f/self.tests.length.to_f
        


    end





end
