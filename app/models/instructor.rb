require_relative 'boatingtest'
require_relative 'student'
# require 'pry'

class Instructor

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def pass_student(student, test_name) 
        BoatingTest.all.each do |test|
            if test.student == student && test.boating_test_name == test_name
                
            end 
        end 
    end 

    def fail_student(student, test_name)

    end 

    def self.all
        @@all
    end 

end


