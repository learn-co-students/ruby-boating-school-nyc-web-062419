class BoatingTest
    attr_accessor :status
    attr_reader :student, :test_name,:instructor
    @@all = []
    def initialize student, test_name, status , instructor
        @student, @test_name, @status , @instructor = student, test_name, status , instructor
        BoatingTest.all << self
    end
    def self.all 
        @@all
    end
end