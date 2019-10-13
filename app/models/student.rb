class Student
    attr_accessor :first_name
    attr_reader :grade_percentage
    @@all=[]
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name,test_status,instructor)
        BoatingTest.new(self,test_name,test_status,instructor)
    end

    def self.find_student(first_name)
        @@all.find{|name| name.first_name == first_name}
    end

    def grade_percentage=(grade_percentage)
        @grade_percentage=grade_percentage.to_f
    end
    





end
