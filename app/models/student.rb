require_relative 'boatingtest' 
require_relative 'instructor'
# require 'pry'

class Student

    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end 

    def add_boating_test(boating_test_name, boating_test_status, instructor) 
        BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
    end 

    def find_student(first_name)  
        Student.all.find { |student| student.first_name == first_name }
    end 

    def grade_percentage #output = float
    #need to access the total number of tests (BoatingTest.boating_test_status.length) 
    #and the ones that are "passed" (BoatingTest.boating_test_status = "passed")
    #if the tests are passed, add them to an array and access length
    #divide the number of tests passed by total of tests
        passed_tests = []
        BoatingTest.all.each do |boating_test|
            if boating_test.boating_test_status == "passed"
                passed_tests << boating_test.boating_test_status
            end  
        end
        passed_tests.length / BoatingTest.all.length
    end  

    def self.all
        @@all 
    end 

end

# binding.pry
# 0
