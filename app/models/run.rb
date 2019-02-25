require "pry"

require_relative './instructor.rb'
require_relative './student.rb'
require_relative './boatingtest.rb'


spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
sandy= Student.new("Sandy")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)
power_steering_failure = patrick.add_boating_test("Power Steering 203", "passed", puff)

BoatingTest.new(sandy, "No Crashing", "passed", puff)
Student.find_student(spongebob)

patrick.grade_percentage

puff.pass_student(patrick, "Power Steering 21")
puff.failed_student(patrick, "Power Steering 21")


binding.pry
