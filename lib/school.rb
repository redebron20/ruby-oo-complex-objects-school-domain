# code here!
require 'pry'

class School
    attr_accessor
    attr_writer :add_student

    def initialize(roster)
        @roster = {}
    end

    def roster
        @roster
    end


    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
    end
    

end
