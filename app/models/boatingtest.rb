class BoatingTest
  attr_accessor :student, :boating_name, :boating_status, :instructor
  @@all =[]

  def initialize(student, boating_name, boating_status, instructor)
    @student = student
    @boating_name = boating_name
    @boating_status = boating_status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end
end
