# require 'pry'

class School
    attr_accessor :name
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name,grade)
        roster[grade] ||= [] #Don't forget to use the ||= operator when you don't want something written over.
        roster[grade] << name
        
        # if @roster.has_key?(grade)
        #     @roster[grade] << name
        # else
        #     @roster[grade] = []
        #     @roster[grade] << name
        # end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each {|grade,students| sorted[grade] = students.sort}
        #The way this works is that I create an empty hash that will be repopulated
        #the new sorted hash. I iterate through each grade, and create a new hash value
        #with the students in that grade sorted.
        sorted
    end



end