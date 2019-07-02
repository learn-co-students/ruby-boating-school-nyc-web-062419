class BoatingTest

    @@all = []

    attr_reader :name, :student, :instructor
    attr_accessor :status

    def initialize (student, name, status, instructor)
        @student = student
        @name = name
        @status = status
        @instructor = instructor
        BoatingTest.all << self
    end

    def self.all
        @@all
    end

end
