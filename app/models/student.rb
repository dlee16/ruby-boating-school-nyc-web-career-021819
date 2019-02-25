require "pry"

class Student
  attr_accessor :first_name
  @@all =[]

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(boating_name, boating_status, instructor)
     BoatingTest.new(self,boating_name, boating_status, instructor)
  end

  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name
    end
  end

  def grade_percentage
    student = Student.find_student(first_name) #object instance of student
    student_test = BoatingTest.all.select do |test|
    test.student == student
    end

    passed_test = student_test.select do |test|
    test.boating_status == "passed"
    end
    passed_test.size.to_f / student_test.size.to_f * 100
    end
  end
