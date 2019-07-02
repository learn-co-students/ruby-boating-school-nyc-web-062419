class BoatingTest

    @@all = []
    attr_accessor :test_name, :status, :student
    def initialize(student, test_name, status, instructor)
        @test_name = test_name
        @status = status
        BoatingTest.all << self
    end

    def self.all
        @@all
    end
end
