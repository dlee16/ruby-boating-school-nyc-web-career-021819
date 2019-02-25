class Instructor
   attr_accessor :name
   attr_reader :boating_name
   @@all = []

   def initialize(name)
     @name = name
     @@all<< self
   end

   def self.all
     @@all
   end

  def pass_student(name, test)
    BoatingTest.all.find do |t|
    t.student == name && t.boating_name == test
    end
    BoatingTest.all.select do |tt|
    tt  == nil
    end
    BoatingTest.new(name, test, boating_status = "passed", self)
  end

  def failed_student(name,test)
    failed_test = BoatingTest.all.find do |t|
    t.student == name && t.boating_name == test
    end
    BoatingTest.all.select do |tt|
    tt  == nil
    end
    BoatingTest.new(name, test, boating_status = "failed", self)
  end

end #end of instructor
