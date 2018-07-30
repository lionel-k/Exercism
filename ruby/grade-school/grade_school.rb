# Given students' names along with the grade that they are in,
# create a roster for the school.
class School
  def initialize(students = {})
    @students = students
  end

  def students(grade)
    @students[grade] || []
  end

  def add(student, grade)
    @students[grade] = [] if students(grade).empty?
    @students[grade] << student
    @students[grade].sort!
  end

  def students_by_grade
    @students.keys.sort.map do |grade|
      { grade: grade, students: students(grade) }
    end
  end
end



module BookKeeping
  VERSION = 3
end

# school = School.new
# # # expected = []
# # # assert_equal expected,
# school.students(3)

# school = School.new
# school.add('Lionel', 2)
# school.add('Anna', 5)
# # expected = ['Aimee']
# print school.students_by_grade
# print school.students(2)
# { grade: grade, students: students.sort }
# print school.students_by_grade
