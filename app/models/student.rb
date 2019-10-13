require_relative 'boatingtest' 
require_relative 'instructor'
require 'pry'

class Student

    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end 

    def add_boating_test(student, boating_test_name, boating_test_status, instructor) #why are we adding(initializing???) a boat test here when we're creating it in the boatingtest class?????
        @student = student
        @boating_test_name = boating_test_name
        @boating_test_status = boating_test_status
        @instructor = instructor
    end 

    def find_student(first_name) #output the student Object - what is the student Object? Only the first name?? 
        Student.all.each do |student_first_name|
            if student_first_name == first_name
                student_first_name.first_name #what do we want to return?
            end 
        end 
    end 

    def grade_percentage #output = float
    #need to access the total number of tests (BoatingTest.boating_test_status.length) 
    #and the ones that are "passed" (BoatingTest.boating_test_status = "passed")
    #if the tests are passed, add them to an array and access length
    #divide the number of tests passed by total of tests
        passed_tests = []
        BoatingTest.all.each do |boating_test|
            if boating_test.boating_test_status = "passed"
                passed_tests << boating_test.boating_test_status
            end 
        passed_tests.length / BoatingTest.all.boating_test_status.length 
        end
    end  

    def self.all
        @@all 
    end 

end

binding.pry
0
