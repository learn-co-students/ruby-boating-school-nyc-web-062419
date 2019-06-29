

class BoatingTest

    @all = []

    def self.all
        @all
    end

    attr_reader :student, :instructor, :name
    attr_accessor :status

    def initialize(student, name, instructor, status = "pending")

        @student = student
        @name = name
        @status = status
        @instructor = instructor

        BoatingTest.all << self
    end

end
