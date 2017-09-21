require 'pry'

class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster[grade]
    @roster[grade] << name
  end

  def grade(points)
    @roster[points]
  end

  def sort
    @roster.each {|grade, students| @roster[grade] = students.sort}
  end
end
