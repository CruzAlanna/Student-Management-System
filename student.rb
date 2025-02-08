require_relative '../ruby-practice/course'

class Student
  attr_accessor :name, :student_id, :courses

  def initialize(name, student_id)
    @name = name
    @student_id = student_id
    @courses = courses = []
  end


  def display_info
    return "\nStudent: #{name}, ID: #{student_id}"
  end

  def enroll(course)
    if courses.include?(course)
      return "! Already enrolled in #{course} !"
    else
      @courses << course
      return "< Enrolled in #{course} >"
    end
  end

  def unenroll(course)
    @courses.delete(course)
    return "< Unenrolled from #{course} >"
  end

  def list_courses 
    if courses.length == 0
      puts "No courses enrolled."

    elsif courses.length == 1
      puts "Enrolled course:"
      courses.each_with_index do |course_name, index|
        puts "#{index +=1}. #{course_name}"
      end

    else courses.length > 1
      puts "Enrolled courses:"
      courses.each_with_index do |course_name, index|
        puts "#{index +=1}. #{course_name}"
      end
    end
  end
end


puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
student1 = Student.new("Jolene Hathaway", 173317)
puts student1.display_info
puts "--------------------------------------------"
puts student1.enroll("Code School")
puts student1.enroll("Health Science")
student1.list_courses

puts student1.unenroll("Health Science")
student1.list_courses

puts student1.enroll("Code School")
student1.list_courses
