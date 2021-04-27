# code here!
class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade 

        if @roster.keys.include?(@grade)
            @roster[@grade] << @student_name
        else
            @roster[@grade] = []
            @roster[@grade] << student_name
        end
    end

    def grade(grade)
        @grade = grade
        @roster[@grade]
    end

    def sort
        @roster.each do |students|
            students.sort!
        end
    end
end

