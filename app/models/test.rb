# require_relative 'spec_helper'
# require_relative '../lib/meowing_cat'
require 'rspec'
require_relative 'boatingtest' 
require_relative 'instructor'
require_relative 'student'
require 'pry'

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

binding.pry
0