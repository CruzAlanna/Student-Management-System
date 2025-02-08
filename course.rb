class Course
  attr_accessor :course_name, :course_code, :enrolled_students

  def initialize(course_name, course_code)
    @course_name = course_name
    @course_code = course_code
    @enrolled_students = enrolled_students = []
  end

  def display_info
    return "Course Name: #{course_name}, Code: #{course_code}"
  end

  def add_student(student_name)
    @enrolled_students << student_name
    return "< #{student_name} added to course roster >"
  end

  def remove_student(student_name)
    @enrolled_students.delete(student_name)
    return "< #{student_name} removed from course roster >"
  end

  def list_students
    if enrolled_students.length == 0
      puts "No students enrolled in this course."
    
    elsif enrolled_students.length == 1
      puts "Currently 1 student enrolled in this course"
      enrolled_students.each_with_index do |student_name, index|
        puts "#{index +=1}. #{student_name}"
      end

    else enrolled_students.length > 1
      puts "Currently #{enrolled_students.length} students enrolled in this course"
      enrolled_students.each_with_index do |student_name, index|
        puts "#{index +=1}. #{student_name}"
      end
    end
  end
end

course1 = Course.new("Code School", 567890)
puts "--------------------------------------------"
puts course1.display_info
puts "--------------------------------------------"
puts course1.add_student("Alanna Cruz")
puts course1.add_student("John Brown")
puts course1.add_student("Jolene Hathaway")
course1.list_students
puts course1.remove_student("John Brown")
course1.list_students
puts "\n"

course2 = Course.new("Health Science", 123456)
puts "--------------------------------------------"
puts "#{course2.display_info}"
puts "--------------------------------------------"
puts course2.add_student("Alanna Cruz")
puts course2.add_student("Jolene Hathaway")
course2.list_students
puts "\n"

course3 = Course.new("Philosophy", 234851)
puts "--------------------------------------------"
puts "#{course3.display_info}"
puts "--------------------------------------------"
puts course3.add_student("Alanna Cruz")
puts course3.add_student("Kami Cruz")
puts course3.add_student("Haane Cruz")
course3.list_students
puts "\n"

course4 = Course.new("Economics", 863489)
puts "--------------------------------------------"
puts "#{course4.display_info}"
puts "--------------------------------------------"
course4.list_students
