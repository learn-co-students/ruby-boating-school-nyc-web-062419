class BoatingTest

    attr_reader :student, :test_name, :instructor
    attr_accessor :status
    @@all = []
    def initialize student,test_name,instructor
        @student = student
        @test_name = test_name
        @instructor = instructor
        @status = "pending"
        BoatingTest.all << self
    end

    def self.all
        @@all 
    end
end
